/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:registratrix_client/src/protocol/organisation.dart' as _i3;
import 'package:registratrix_client/src/protocol/super_user.dart' as _i4;
import 'package:registratrix_client/src/protocol/organisation_member.dart'
    as _i5;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i6;
import 'protocol.dart' as _i7;

/// The organisation endpoint.
/// {@category Endpoint}
class EndpointOrganisation extends _i1.EndpointRef {
  EndpointOrganisation(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'organisation';

  /// Get the organisations which this user account is a member for.
  _i2.Future<List<_i3.Organisation>> getOrganisations() =>
      caller.callServerEndpoint<List<_i3.Organisation>>(
        'organisation',
        'getOrganisations',
        {},
      );

  /// Edit the [organisation].
  _i2.Future<_i3.Organisation> editOrganisation(
          _i3.Organisation organisation) =>
      caller.callServerEndpoint<_i3.Organisation>(
        'organisation',
        'editOrganisation',
        {'organisation': organisation},
      );

  /// Get a super user associated with `UserInfo`.
  _i2.Future<_i4.SuperUser?> getSuperUser() =>
      caller.callServerEndpoint<_i4.SuperUser?>(
        'organisation',
        'getSuperUser',
        {},
      );

  /// Require a super user.
  _i2.Future<_i4.SuperUser> requireSuperUser() =>
      caller.callServerEndpoint<_i4.SuperUser>(
        'organisation',
        'requireSuperUser',
        {},
      );

  /// Get all the organisations in the database.
  ///
  /// If the super user doesn't have the `canListOrganisations` permission, only
  /// the ones they own will be returned.
  ///
  /// If the user attached to [session] has no [SuperUser] attached,
  /// [ErrorMessage] will be thrown.
  _i2.Future<List<_i3.Organisation>> getAllOrganisations() =>
      caller.callServerEndpoint<List<_i3.Organisation>>(
        'organisation',
        'getAllOrganisations',
        {},
      );

  /// Create a new organisation.
  _i2.Future<_i3.Organisation> createOrganisation(
          _i3.Organisation organisation) =>
      caller.callServerEndpoint<_i3.Organisation>(
        'organisation',
        'createOrganisation',
        {'organisation': organisation},
      );

  /// Add a new member to an [organisation] by their [emailAddress].
  _i2.Future<_i5.OrganisationMember?> addMember(
    _i3.Organisation organisation,
    String emailAddress,
  ) =>
      caller.callServerEndpoint<_i5.OrganisationMember?>(
        'organisation',
        'addMember',
        {
          'organisation': organisation,
          'emailAddress': emailAddress,
        },
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i6.Caller(client);
  }

  late final _i6.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i7.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    organisation = EndpointOrganisation(this);
    modules = _Modules(this);
  }

  late final EndpointOrganisation organisation;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup =>
      {'organisation': organisation};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
