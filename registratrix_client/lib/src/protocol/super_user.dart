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
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;

/// A user which can edit organisations.
abstract class SuperUser implements _i1.SerializableModel {
  SuperUser._({
    this.id,
    required this.userInfoId,
    this.userInfo,
    required this.name,
    bool? canCreateOrganisations,
    bool? canEditOrganisations,
    bool? canDeleteOrganisations,
    bool? canListOrganisations,
    bool? canAddMembers,
    bool? canRemoveMembers,
  })  : canCreateOrganisations = canCreateOrganisations ?? false,
        canEditOrganisations = canEditOrganisations ?? false,
        canDeleteOrganisations = canDeleteOrganisations ?? false,
        canListOrganisations = canListOrganisations ?? false,
        canAddMembers = canAddMembers ?? false,
        canRemoveMembers = canRemoveMembers ?? false;

  factory SuperUser({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    bool? canCreateOrganisations,
    bool? canEditOrganisations,
    bool? canDeleteOrganisations,
    bool? canListOrganisations,
    bool? canAddMembers,
    bool? canRemoveMembers,
  }) = _SuperUserImpl;

  factory SuperUser.fromJson(Map<String, dynamic> jsonSerialization) {
    return SuperUser(
      id: jsonSerialization['id'] as int?,
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['userInfo'] as Map<String, dynamic>)),
      name: jsonSerialization['name'] as String,
      canCreateOrganisations:
          jsonSerialization['canCreateOrganisations'] as bool,
      canEditOrganisations: jsonSerialization['canEditOrganisations'] as bool,
      canDeleteOrganisations:
          jsonSerialization['canDeleteOrganisations'] as bool,
      canListOrganisations: jsonSerialization['canListOrganisations'] as bool,
      canAddMembers: jsonSerialization['canAddMembers'] as bool,
      canRemoveMembers: jsonSerialization['canRemoveMembers'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userInfoId;

  /// The user info this super user is bound to.
  _i2.UserInfo? userInfo;

  /// The name of this super user.
  String name;

  /// Whether this super user can create organisations.
  bool canCreateOrganisations;

  /// Whether this super user can edit organisations.
  bool canEditOrganisations;

  /// Whether this super user can delete organisations.
  bool canDeleteOrganisations;

  /// Whether this super user can list organisations they don't own.
  bool canListOrganisations;

  /// Whether this super user can add members to organisations.
  bool canAddMembers;

  /// Whether this super user can remove members from organisations.
  bool canRemoveMembers;

  SuperUser copyWith({
    int? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    String? name,
    bool? canCreateOrganisations,
    bool? canEditOrganisations,
    bool? canDeleteOrganisations,
    bool? canListOrganisations,
    bool? canAddMembers,
    bool? canRemoveMembers,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'name': name,
      'canCreateOrganisations': canCreateOrganisations,
      'canEditOrganisations': canEditOrganisations,
      'canDeleteOrganisations': canDeleteOrganisations,
      'canListOrganisations': canListOrganisations,
      'canAddMembers': canAddMembers,
      'canRemoveMembers': canRemoveMembers,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SuperUserImpl extends SuperUser {
  _SuperUserImpl({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    bool? canCreateOrganisations,
    bool? canEditOrganisations,
    bool? canDeleteOrganisations,
    bool? canListOrganisations,
    bool? canAddMembers,
    bool? canRemoveMembers,
  }) : super._(
          id: id,
          userInfoId: userInfoId,
          userInfo: userInfo,
          name: name,
          canCreateOrganisations: canCreateOrganisations,
          canEditOrganisations: canEditOrganisations,
          canDeleteOrganisations: canDeleteOrganisations,
          canListOrganisations: canListOrganisations,
          canAddMembers: canAddMembers,
          canRemoveMembers: canRemoveMembers,
        );

  @override
  SuperUser copyWith({
    Object? id = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    String? name,
    bool? canCreateOrganisations,
    bool? canEditOrganisations,
    bool? canDeleteOrganisations,
    bool? canListOrganisations,
    bool? canAddMembers,
    bool? canRemoveMembers,
  }) {
    return SuperUser(
      id: id is int? ? id : this.id,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i2.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      name: name ?? this.name,
      canCreateOrganisations:
          canCreateOrganisations ?? this.canCreateOrganisations,
      canEditOrganisations: canEditOrganisations ?? this.canEditOrganisations,
      canDeleteOrganisations:
          canDeleteOrganisations ?? this.canDeleteOrganisations,
      canListOrganisations: canListOrganisations ?? this.canListOrganisations,
      canAddMembers: canAddMembers ?? this.canAddMembers,
      canRemoveMembers: canRemoveMembers ?? this.canRemoveMembers,
    );
  }
}
