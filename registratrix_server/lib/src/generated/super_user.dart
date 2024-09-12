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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;

/// A user which can edit organisations.
abstract class SuperUser extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  SuperUser._({
    int? id,
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
        canRemoveMembers = canRemoveMembers ?? false,
        super(id);

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

  static final t = SuperUserTable();

  static const db = SuperUserRepository._();

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

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      'name': name,
      'canCreateOrganisations': canCreateOrganisations,
      'canEditOrganisations': canEditOrganisations,
      'canDeleteOrganisations': canDeleteOrganisations,
      'canListOrganisations': canListOrganisations,
      'canAddMembers': canAddMembers,
      'canRemoveMembers': canRemoveMembers,
    };
  }

  static SuperUserInclude include({_i2.UserInfoInclude? userInfo}) {
    return SuperUserInclude._(userInfo: userInfo);
  }

  static SuperUserIncludeList includeList({
    _i1.WhereExpressionBuilder<SuperUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SuperUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SuperUserTable>? orderByList,
    SuperUserInclude? include,
  }) {
    return SuperUserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SuperUser.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SuperUser.t),
      include: include,
    );
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

class SuperUserTable extends _i1.Table {
  SuperUserTable({super.tableRelation}) : super(tableName: 'super_users') {
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    canCreateOrganisations = _i1.ColumnBool(
      'canCreateOrganisations',
      this,
      hasDefault: true,
    );
    canEditOrganisations = _i1.ColumnBool(
      'canEditOrganisations',
      this,
      hasDefault: true,
    );
    canDeleteOrganisations = _i1.ColumnBool(
      'canDeleteOrganisations',
      this,
      hasDefault: true,
    );
    canListOrganisations = _i1.ColumnBool(
      'canListOrganisations',
      this,
      hasDefault: true,
    );
    canAddMembers = _i1.ColumnBool(
      'canAddMembers',
      this,
      hasDefault: true,
    );
    canRemoveMembers = _i1.ColumnBool(
      'canRemoveMembers',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnInt userInfoId;

  /// The user info this super user is bound to.
  _i2.UserInfoTable? _userInfo;

  /// The name of this super user.
  late final _i1.ColumnString name;

  /// Whether this super user can create organisations.
  late final _i1.ColumnBool canCreateOrganisations;

  /// Whether this super user can edit organisations.
  late final _i1.ColumnBool canEditOrganisations;

  /// Whether this super user can delete organisations.
  late final _i1.ColumnBool canDeleteOrganisations;

  /// Whether this super user can list organisations they don't own.
  late final _i1.ColumnBool canListOrganisations;

  /// Whether this super user can add members to organisations.
  late final _i1.ColumnBool canAddMembers;

  /// Whether this super user can remove members from organisations.
  late final _i1.ColumnBool canRemoveMembers;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: SuperUser.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userInfoId,
        name,
        canCreateOrganisations,
        canEditOrganisations,
        canDeleteOrganisations,
        canListOrganisations,
        canAddMembers,
        canRemoveMembers,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

class SuperUserInclude extends _i1.IncludeObject {
  SuperUserInclude._({_i2.UserInfoInclude? userInfo}) {
    _userInfo = userInfo;
  }

  _i2.UserInfoInclude? _userInfo;

  @override
  Map<String, _i1.Include?> get includes => {'userInfo': _userInfo};

  @override
  _i1.Table get table => SuperUser.t;
}

class SuperUserIncludeList extends _i1.IncludeList {
  SuperUserIncludeList._({
    _i1.WhereExpressionBuilder<SuperUserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SuperUser.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => SuperUser.t;
}

class SuperUserRepository {
  const SuperUserRepository._();

  final attachRow = const SuperUserAttachRowRepository._();

  Future<List<SuperUser>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SuperUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SuperUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SuperUserTable>? orderByList,
    _i1.Transaction? transaction,
    SuperUserInclude? include,
  }) async {
    return session.db.find<SuperUser>(
      where: where?.call(SuperUser.t),
      orderBy: orderBy?.call(SuperUser.t),
      orderByList: orderByList?.call(SuperUser.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<SuperUser?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SuperUserTable>? where,
    int? offset,
    _i1.OrderByBuilder<SuperUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SuperUserTable>? orderByList,
    _i1.Transaction? transaction,
    SuperUserInclude? include,
  }) async {
    return session.db.findFirstRow<SuperUser>(
      where: where?.call(SuperUser.t),
      orderBy: orderBy?.call(SuperUser.t),
      orderByList: orderByList?.call(SuperUser.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<SuperUser?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    SuperUserInclude? include,
  }) async {
    return session.db.findById<SuperUser>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<SuperUser>> insert(
    _i1.Session session,
    List<SuperUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<SuperUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<SuperUser> insertRow(
    _i1.Session session,
    SuperUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<SuperUser>(
      row,
      transaction: transaction,
    );
  }

  Future<List<SuperUser>> update(
    _i1.Session session,
    List<SuperUser> rows, {
    _i1.ColumnSelections<SuperUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<SuperUser>(
      rows,
      columns: columns?.call(SuperUser.t),
      transaction: transaction,
    );
  }

  Future<SuperUser> updateRow(
    _i1.Session session,
    SuperUser row, {
    _i1.ColumnSelections<SuperUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<SuperUser>(
      row,
      columns: columns?.call(SuperUser.t),
      transaction: transaction,
    );
  }

  Future<List<SuperUser>> delete(
    _i1.Session session,
    List<SuperUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SuperUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<SuperUser> deleteRow(
    _i1.Session session,
    SuperUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SuperUser>(
      row,
      transaction: transaction,
    );
  }

  Future<List<SuperUser>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SuperUserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SuperUser>(
      where: where(SuperUser.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SuperUserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SuperUser>(
      where: where?.call(SuperUser.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class SuperUserAttachRowRepository {
  const SuperUserAttachRowRepository._();

  Future<void> userInfo(
    _i1.Session session,
    SuperUser superUser,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
  }) async {
    if (superUser.id == null) {
      throw ArgumentError.notNull('superUser.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $superUser = superUser.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<SuperUser>(
      $superUser,
      columns: [SuperUser.t.userInfoId],
      transaction: transaction,
    );
  }
}
