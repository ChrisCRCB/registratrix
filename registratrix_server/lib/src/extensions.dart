import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

import 'generated/protocol.dart';

/// Useful extension methods.
extension SessionX on Session {
  /// Returns the user info attached to this session.
  ///
  /// If the user is not authenticated, then `null` will be returned.
  Future<UserInfo?> get userInfo async {
    final auth = await authenticated;
    if (auth == null) {
      return null;
    }
    final id = auth.userId;
    return UserInfo.db.findById(this, id);
  }
}

/// Useful extension methods.
extension OrganisationX on Organisation {
  /// Returns the membership of [session] to this organisation.
  Future<OrganisationMember?> getMembership(final Session session) async {
    final userInfo = await session.userInfo;
    if (userInfo == null) {
      return null;
    }
    return OrganisationMember.db.findFirstRow(
      session,
      where: (final t) =>
          t.organisationId.equals(id) & t.userInfoId.equals(userInfo.id),
    );
  }
}
