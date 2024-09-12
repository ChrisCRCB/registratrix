import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

import '../emails.dart';
import '../extensions.dart';
import '../generated/protocol.dart';

/// The organisation endpoint.
class OrganisationEndpoint extends Endpoint {
  /// Enforce logins.
  @override
  bool get requireLogin => true;

  /// Get the organisations which this user account is a member for.
  Future<List<Organisation>> getOrganisations(final Session session) async {
    final userInfo = await session.userInfo;
    if (userInfo == null) {
      throw ErrorMessage(
        message: 'Somehow an unauthenticated user listed organisations.',
      );
    }
    if ((await Organisation.db.count(session)) == 0) {
      await session.db.transaction(
        (final transaction) async {
          final superUser = await SuperUser.db.insertRow(
            session,
            SuperUser(
              userInfoId: userInfo.id!,
              name: userInfo.userIdentifier,
              canCreateOrganisations: true,
              canEditOrganisations: true,
              canDeleteOrganisations: true,
              canListOrganisations: true,
              canAddMembers: true,
              canRemoveMembers: true,
            ),
            transaction: transaction,
          );
          final organisation = await Organisation.db.insertRow(
            session,
            Organisation(name: 'Default Organisation', ownerId: superUser.id!),
            transaction: transaction,
          );
          await OrganisationMember.db.insertRow(
            session,
            OrganisationMember(
              organisationId: organisation.id!,
              userInfoId: userInfo.id!,
              canAddEvents: true,
              canDeleteEvents: true,
              canEditOrganisation: true,
            ),
            transaction: transaction,
          );
        },
      );
    }
    final members = await OrganisationMember.db.find(
      session,
      include: OrganisationMember.include(organisation: Organisation.include()),
      where: (final t) => t.userInfoId.equals(userInfo.id),
    );
    return members.map((final member) => member.organisation!).toList();
  }

  /// Edit the [organisation].
  Future<Organisation> editOrganisation(
    final Session session,
    final Organisation organisation,
  ) async {
    final member = await organisation.getMembership(session);
    if (member == null) {
      final superUser = await getSuperUser(session);
      if (superUser?.canEditOrganisations ?? false) {
        throw ErrorMessage(
          message: 'You do not have membership to that organisation.',
        );
      }
    }
    return Organisation.db.updateRow(session, organisation);
  }

  /// Get a super user associated with `UserInfo`.
  Future<SuperUser?> getSuperUser(final Session session) async {
    final userInfo = await session.userInfo;
    if (userInfo == null) {
      return null;
    }
    return SuperUser.db.findFirstRow(
      session,
      where: (final t) => t.userInfoId.equals(userInfo.id),
    );
  }

  /// Require a super user.
  Future<SuperUser> requireSuperUser(final Session session) async {
    final superUser = await getSuperUser(session);
    if (superUser == null) {
      throw ErrorMessage(message: 'You are not a super user.');
    }
    return superUser;
  }

  /// Get all the organisations in the database.
  ///
  /// If the super user doesn't have the `canListOrganisations` permission, only
  /// the ones they own will be returned.
  ///
  /// If the user attached to [session] has no [SuperUser] attached,
  /// [ErrorMessage] will be thrown.
  Future<List<Organisation>> getAllOrganisations(final Session session) async {
    final superUser = await requireSuperUser(session);
    return Organisation.db.find(
      session,
      where: !superUser.canListOrganisations
          ? null
          : (final t) => t.ownerId.equals(superUser.id),
      orderByList: (final t) => [
        Order(column: t.ownerId),
        Order(column: t.name),
      ],
      include: Organisation.include(owner: SuperUser.include()),
    );
  }

  /// Create a new organisation.
  Future<Organisation> createOrganisation(
    final Session session,
    final Organisation organisation,
  ) async {
    final superUser = await requireSuperUser(session);
    organisation
      ..id = null
      ..ownerId = superUser.id!;
    final message = getEmail(
      session: session,
      to: superUser.name,
      subject: 'Organisation Created',
      text: 'The organisation ${organisation.name} has been created.',
    );
    await sendMail(session, message);
    return Organisation.db.insertRow(session, organisation);
  }

  /// Add a new member to an [organisation] by their [emailAddress].
  Future<OrganisationMember?> addMember(
    final Session session,
    final Organisation organisation,
    final String emailAddress,
  ) async {
    await requireSuperUser(session);
    final userInfo = await UserInfo.db.findFirstRow(
      session,
      where: (final t) => t.userIdentifier.equals(emailAddress),
    );
    if (userInfo == null) {
      return null;
    }
    final member = await OrganisationMember.db.insertRow(
      session,
      OrganisationMember(
        organisationId: organisation.id!,
        userInfoId: userInfo.id!,
      ),
    );
    final message = getEmail(
      session: session,
      to: emailAddress,
      subject: 'Organisation Membership',
      text: 'You are now a member of ${organisation.name}.',
    );
    await sendMail(session, message);
    return member;
  }
}
