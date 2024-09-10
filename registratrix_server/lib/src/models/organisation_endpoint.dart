import 'package:serverpod/serverpod.dart';

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
    if ((await Organisation.db.count(session)) == 0) {
      final organisation = await Organisation.db.insertRow(
        session,
        Organisation(name: 'Default Organisation'),
      );
      await OrganisationMember.db.insertRow(
        session,
        OrganisationMember(
          organisationId: organisation.id!,
          userInfoId: userInfo!.id!,
          canAddEvents: true,
          canDeleteEvents: true,
          canEditOrganisation: true,
        ),
      );
    }
    final members = await OrganisationMember.db.find(
      session,
      include: OrganisationMember.include(organisation: Organisation.include()),
      where: (final t) => t.userInfoId.equals(userInfo!.id),
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
      throw ErrorMessage(
        message: 'You do not have membership to that organisation.',
      );
    }
    return Organisation.db.updateRow(session, organisation);
  }
}
