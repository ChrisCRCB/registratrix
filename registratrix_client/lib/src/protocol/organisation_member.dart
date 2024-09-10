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
import 'protocol.dart' as _i2;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i3;

/// A member of an organisation.
abstract class OrganisationMember implements _i1.SerializableModel {
  OrganisationMember._({
    this.id,
    required this.organisationId,
    this.organisation,
    required this.userInfoId,
    this.userInfo,
    bool? canEditOrganisation,
    bool? canAddEvents,
    bool? canDeleteEvents,
  })  : canEditOrganisation = canEditOrganisation ?? false,
        canAddEvents = canAddEvents ?? false,
        canDeleteEvents = canDeleteEvents ?? false;

  factory OrganisationMember({
    int? id,
    required int organisationId,
    _i2.Organisation? organisation,
    required int userInfoId,
    _i3.UserInfo? userInfo,
    bool? canEditOrganisation,
    bool? canAddEvents,
    bool? canDeleteEvents,
  }) = _OrganisationMemberImpl;

  factory OrganisationMember.fromJson(Map<String, dynamic> jsonSerialization) {
    return OrganisationMember(
      id: jsonSerialization['id'] as int?,
      organisationId: jsonSerialization['organisationId'] as int,
      organisation: jsonSerialization['organisation'] == null
          ? null
          : _i2.Organisation.fromJson(
              (jsonSerialization['organisation'] as Map<String, dynamic>)),
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i3.UserInfo.fromJson(
              (jsonSerialization['userInfo'] as Map<String, dynamic>)),
      canEditOrganisation: jsonSerialization['canEditOrganisation'] as bool,
      canAddEvents: jsonSerialization['canAddEvents'] as bool,
      canDeleteEvents: jsonSerialization['canDeleteEvents'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int organisationId;

  /// The organisation this member is part of.
  _i2.Organisation? organisation;

  int userInfoId;

  /// The user data which has the membership.
  _i3.UserInfo? userInfo;

  /// Whether this member can edit the organisation.
  bool canEditOrganisation;

  /// Whether this member can add organisation events.
  bool canAddEvents;

  /// Whether this member can delete events.
  bool canDeleteEvents;

  OrganisationMember copyWith({
    int? id,
    int? organisationId,
    _i2.Organisation? organisation,
    int? userInfoId,
    _i3.UserInfo? userInfo,
    bool? canEditOrganisation,
    bool? canAddEvents,
    bool? canDeleteEvents,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'organisationId': organisationId,
      if (organisation != null) 'organisation': organisation?.toJson(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'canEditOrganisation': canEditOrganisation,
      'canAddEvents': canAddEvents,
      'canDeleteEvents': canDeleteEvents,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OrganisationMemberImpl extends OrganisationMember {
  _OrganisationMemberImpl({
    int? id,
    required int organisationId,
    _i2.Organisation? organisation,
    required int userInfoId,
    _i3.UserInfo? userInfo,
    bool? canEditOrganisation,
    bool? canAddEvents,
    bool? canDeleteEvents,
  }) : super._(
          id: id,
          organisationId: organisationId,
          organisation: organisation,
          userInfoId: userInfoId,
          userInfo: userInfo,
          canEditOrganisation: canEditOrganisation,
          canAddEvents: canAddEvents,
          canDeleteEvents: canDeleteEvents,
        );

  @override
  OrganisationMember copyWith({
    Object? id = _Undefined,
    int? organisationId,
    Object? organisation = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    bool? canEditOrganisation,
    bool? canAddEvents,
    bool? canDeleteEvents,
  }) {
    return OrganisationMember(
      id: id is int? ? id : this.id,
      organisationId: organisationId ?? this.organisationId,
      organisation: organisation is _i2.Organisation?
          ? organisation
          : this.organisation?.copyWith(),
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i3.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      canEditOrganisation: canEditOrganisation ?? this.canEditOrganisation,
      canAddEvents: canAddEvents ?? this.canAddEvents,
      canDeleteEvents: canDeleteEvents ?? this.canDeleteEvents,
    );
  }
}
