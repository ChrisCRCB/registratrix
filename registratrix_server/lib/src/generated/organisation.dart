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
import 'protocol.dart' as _i2;

/// An organisation.
abstract class Organisation extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Organisation._({
    int? id,
    required this.name,
    DateTime? createdAt,
    required this.ownerId,
    this.owner,
  })  : createdAt = createdAt ?? DateTime.now(),
        super(id);

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

  static final t = OrganisationTable();

  static const db = OrganisationRepository._();

  /// The name of this organisation.
  String name;

  /// The time when this organisation was created.
  DateTime createdAt;

  int ownerId;

  /// The user who created this organisation.
  _i2.SuperUser? owner;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'createdAt': createdAt.toJson(),
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
    };
  }

  static OrganisationInclude include({_i2.SuperUserInclude? owner}) {
    return OrganisationInclude._(owner: owner);
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

class OrganisationTable extends _i1.Table {
  OrganisationTable({super.tableRelation}) : super(tableName: 'organisations') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
    ownerId = _i1.ColumnInt(
      'ownerId',
      this,
    );
  }

  /// The name of this organisation.
  late final _i1.ColumnString name;

  /// The time when this organisation was created.
  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnInt ownerId;

  /// The user who created this organisation.
  _i2.SuperUserTable? _owner;

  _i2.SuperUserTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: Organisation.t.ownerId,
      foreignField: _i2.SuperUser.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.SuperUserTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        createdAt,
        ownerId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'owner') {
      return owner;
    }
    return null;
  }
}

class OrganisationInclude extends _i1.IncludeObject {
  OrganisationInclude._({_i2.SuperUserInclude? owner}) {
    _owner = owner;
  }

  _i2.SuperUserInclude? _owner;

  @override
  Map<String, _i1.Include?> get includes => {'owner': _owner};

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

  final attachRow = const OrganisationAttachRowRepository._();

  Future<List<Organisation>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrganisationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationTable>? orderByList,
    _i1.Transaction? transaction,
    OrganisationInclude? include,
  }) async {
    return session.db.find<Organisation>(
      where: where?.call(Organisation.t),
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
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
    OrganisationInclude? include,
  }) async {
    return session.db.findFirstRow<Organisation>(
      where: where?.call(Organisation.t),
      orderBy: orderBy?.call(Organisation.t),
      orderByList: orderByList?.call(Organisation.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Organisation?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    OrganisationInclude? include,
  }) async {
    return session.db.findById<Organisation>(
      id,
      transaction: transaction,
      include: include,
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

class OrganisationAttachRowRepository {
  const OrganisationAttachRowRepository._();

  Future<void> owner(
    _i1.Session session,
    Organisation organisation,
    _i2.SuperUser owner, {
    _i1.Transaction? transaction,
  }) async {
    if (organisation.id == null) {
      throw ArgumentError.notNull('organisation.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $organisation = organisation.copyWith(ownerId: owner.id);
    await session.db.updateRow<Organisation>(
      $organisation,
      columns: [Organisation.t.ownerId],
      transaction: transaction,
    );
  }
}
