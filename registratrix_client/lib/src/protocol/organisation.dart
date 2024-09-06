/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

/// An organisation.
abstract class Organisation implements _i1.SerializableModel {
  Organisation._({
    this.id,
    required this.name,
    required this.createdAt,
  });

  factory Organisation({
    int? id,
    required String name,
    required DateTime createdAt,
  }) = _OrganisationImpl;

  factory Organisation.fromJson(Map<String, dynamic> jsonSerialization) {
    return Organisation(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  DateTime createdAt;

  Organisation copyWith({
    int? id,
    String? name,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'createdAt': createdAt.toJson(),
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
    required DateTime createdAt,
  }) : super._(
          id: id,
          name: name,
          createdAt: createdAt,
        );

  @override
  Organisation copyWith({
    Object? id = _Undefined,
    String? name,
    DateTime? createdAt,
  }) {
    return Organisation(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
