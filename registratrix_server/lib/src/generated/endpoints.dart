/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/organisation_endpoint.dart' as _i2;
import 'package:registratrix_server/src/generated/organisation.dart' as _i3;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'organisation': _i2.OrganisationEndpoint()
        ..initialize(
          server,
          'organisation',
          null,
        )
    };
    connectors['organisation'] = _i1.EndpointConnector(
      name: 'organisation',
      endpoint: endpoints['organisation']!,
      methodConnectors: {
        'getOrganisations': _i1.MethodConnector(
          name: 'getOrganisations',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisation'] as _i2.OrganisationEndpoint)
                  .getOrganisations(session),
        ),
        'editOrganisation': _i1.MethodConnector(
          name: 'editOrganisation',
          params: {
            'organisation': _i1.ParameterDescription(
              name: 'organisation',
              type: _i1.getType<_i3.Organisation>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisation'] as _i2.OrganisationEndpoint)
                  .editOrganisation(
            session,
            params['organisation'],
          ),
        ),
        'getSuperUser': _i1.MethodConnector(
          name: 'getSuperUser',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisation'] as _i2.OrganisationEndpoint)
                  .getSuperUser(session),
        ),
        'requireSuperUser': _i1.MethodConnector(
          name: 'requireSuperUser',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisation'] as _i2.OrganisationEndpoint)
                  .requireSuperUser(session),
        ),
        'getAllOrganisations': _i1.MethodConnector(
          name: 'getAllOrganisations',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisation'] as _i2.OrganisationEndpoint)
                  .getAllOrganisations(session),
        ),
        'createOrganisation': _i1.MethodConnector(
          name: 'createOrganisation',
          params: {
            'organisation': _i1.ParameterDescription(
              name: 'organisation',
              type: _i1.getType<_i3.Organisation>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisation'] as _i2.OrganisationEndpoint)
                  .createOrganisation(
            session,
            params['organisation'],
          ),
        ),
        'addMember': _i1.MethodConnector(
          name: 'addMember',
          params: {
            'organisation': _i1.ParameterDescription(
              name: 'organisation',
              type: _i1.getType<_i3.Organisation>(),
              nullable: false,
            ),
            'emailAddress': _i1.ParameterDescription(
              name: 'emailAddress',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisation'] as _i2.OrganisationEndpoint).addMember(
            session,
            params['organisation'],
            params['emailAddress'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i4.Endpoints()..initializeEndpoints(server);
  }
}
