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

/// An organisation.
abstract class Organisation implements _i1.SerializableModel {
  Organisation._({
    this.id,
    required this.name,
    DateTime? createdAt,
    required this.ownerId,
    this.owner,
  }) : createdAt = createdAt ?? DateTime.now();

  factory Organisation({
    int? id,
    required String name,
    DateTime? createdAt,
    required int ownerId,
    _i2.SuperUser? owner,
  }) = _OrganisationImpl;

  factory Organisation.fromJson(Map<String, dynamic> jsonSerialization) {
    return Organisation(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      ownerId: jsonSerialization['ownerId'] as int,
      owner: jsonSerialization['owner'] == null
          ? null
          : _i2.SuperUser.fromJson(
              (jsonSerialization['owner'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The name of this organisation.
  String name;

  /// The time when this organisation was created.
  DateTime createdAt;

  int ownerId;

  /// The user who created this organisation.
  _i2.SuperUser? owner;

  Organisation copyWith({
    int? id,
    String? name,
    DateTime? createdAt,
    int? ownerId,
    _i2.SuperUser? owner,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'createdAt': createdAt.toJson(),
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OrganisationImpl extends Organisation {
  _OrganisationImpl({
    int? id,
    required String name,
    DateTime? createdAt,
    required int ownerId,
    _i2.SuperUser? owner,
  }) : super._(
          id: id,
          name: name,
          createdAt: createdAt,
          ownerId: ownerId,
          owner: owner,
        );

  @override
  Organisation copyWith({
    Object? id = _Undefined,
    String? name,
    DateTime? createdAt,
    int? ownerId,
    Object? owner = _Undefined,
  }) {
    return Organisation(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i2.SuperUser? ? owner : this.owner?.copyWith(),
    );
  }
}
