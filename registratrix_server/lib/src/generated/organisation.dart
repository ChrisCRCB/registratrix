/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

/// An organisation.
abstract class Organisation extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Organisation._({
    int? id,
    required this.name,
    required this.createdAt,
  }) : super(id);

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

  static final t = OrganisationTable();

  static const db = OrganisationRepository._();

  String name;

  DateTime createdAt;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'createdAt': createdAt.toJson(),
    };
  }

  static OrganisationInclude include() {
    return OrganisationInclude._();
  }

  static OrganisationIncludeList includeList({
    _i1.WhereExpressionBuilder<OrganisationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrganisationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationTable>? orderByList,
    OrganisationInclude? include,
  }) {
    return OrganisationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Organisation.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Organisation.t),
      include: include,
    );
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

class OrganisationTable extends _i1.Table {
  OrganisationTable({super.tableRelation}) : super(tableName: 'organisations') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        createdAt,
      ];
}

class OrganisationInclude extends _i1.IncludeObject {
  OrganisationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Organisation.t;
}

class OrganisationIncludeList extends _i1.IncludeList {
  OrganisationIncludeList._({
    _i1.WhereExpressionBuilder<OrganisationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Organisation.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Organisation.t;
}

class OrganisationRepository {
  const OrganisationRepository._();

  Future<List<Organisation>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrganisationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Organisation>(
      where: where?.call(Organisation.t),
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Organisation?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationTable>? where,
    int? offset,
    _i1.OrderByBuilder<OrganisationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Organisation>(
      where: where?.call(Organisation.t),
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Organisation?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Organisation>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Organisation>> insert(
    _i1.Session session,
    List<Organisation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Organisation>(
      rows,
      transaction: transaction,
    );
  }

  Future<Organisation> insertRow(
    _i1.Session session,
    Organisation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Organisation>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Organisation>> update(
    _i1.Session session,
    List<Organisation> rows, {
    _i1.ColumnSelections<OrganisationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Organisation>(
      rows,
      columns: columns?.call(Organisation.t),
      transaction: transaction,
    );
  }

  Future<Organisation> updateRow(
    _i1.Session session,
    Organisation row, {
    _i1.ColumnSelections<OrganisationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Organisation>(
      row,
      columns: columns?.call(Organisation.t),
      transaction: transaction,
    );
  }

  Future<List<Organisation>> delete(
    _i1.Session session,
    List<Organisation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Organisation>(
      rows,
      transaction: transaction,
    );
  }

  Future<Organisation> deleteRow(
    _i1.Session session,
    Organisation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Organisation>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Organisation>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrganisationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Organisation>(
      where: where(Organisation.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Organisation>(
      where: where?.call(Organisation.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
