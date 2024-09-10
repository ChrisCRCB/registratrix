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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;

/// A member of an organisation.
abstract class OrganisationMember extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  OrganisationMember._({
    int? id,
    required this.organisationId,
    this.organisation,
    required this.userInfoId,
    this.userInfo,
    bool? canEditOrganisation,
    bool? canAddEvents,
    bool? canDeleteEvents,
  })  : canEditOrganisation = canEditOrganisation ?? false,
        canAddEvents = canAddEvents ?? false,
        canDeleteEvents = canDeleteEvents ?? false,
        super(id);

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

  static final t = OrganisationMemberTable();

  static const db = OrganisationMemberRepository._();

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

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'organisationId': organisationId,
      if (organisation != null)
        'organisation': organisation?.toJsonForProtocol(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      'canEditOrganisation': canEditOrganisation,
      'canAddEvents': canAddEvents,
      'canDeleteEvents': canDeleteEvents,
    };
  }

  static OrganisationMemberInclude include({
    _i2.OrganisationInclude? organisation,
    _i3.UserInfoInclude? userInfo,
  }) {
    return OrganisationMemberInclude._(
      organisation: organisation,
      userInfo: userInfo,
    );
  }

  static OrganisationMemberIncludeList includeList({
    _i1.WhereExpressionBuilder<OrganisationMemberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrganisationMemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationMemberTable>? orderByList,
    OrganisationMemberInclude? include,
  }) {
    return OrganisationMemberIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(OrganisationMember.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(OrganisationMember.t),
      include: include,
    );
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

class OrganisationMemberTable extends _i1.Table {
  OrganisationMemberTable({super.tableRelation})
      : super(tableName: 'organisation_members') {
    organisationId = _i1.ColumnInt(
      'organisationId',
      this,
    );
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    canEditOrganisation = _i1.ColumnBool(
      'canEditOrganisation',
      this,
      hasDefault: true,
    );
    canAddEvents = _i1.ColumnBool(
      'canAddEvents',
      this,
      hasDefault: true,
    );
    canDeleteEvents = _i1.ColumnBool(
      'canDeleteEvents',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnInt organisationId;

  /// The organisation this member is part of.
  _i2.OrganisationTable? _organisation;

  late final _i1.ColumnInt userInfoId;

  /// The user data which has the membership.
  _i3.UserInfoTable? _userInfo;

  /// Whether this member can edit the organisation.
  late final _i1.ColumnBool canEditOrganisation;

  /// Whether this member can add organisation events.
  late final _i1.ColumnBool canAddEvents;

  /// Whether this member can delete events.
  late final _i1.ColumnBool canDeleteEvents;

  _i2.OrganisationTable get organisation {
    if (_organisation != null) return _organisation!;
    _organisation = _i1.createRelationTable(
      relationFieldName: 'organisation',
      field: OrganisationMember.t.organisationId,
      foreignField: _i2.Organisation.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.OrganisationTable(tableRelation: foreignTableRelation),
    );
    return _organisation!;
  }

  _i3.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: OrganisationMember.t.userInfoId,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        organisationId,
        userInfoId,
        canEditOrganisation,
        canAddEvents,
        canDeleteEvents,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'organisation') {
      return organisation;
    }
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

class OrganisationMemberInclude extends _i1.IncludeObject {
  OrganisationMemberInclude._({
    _i2.OrganisationInclude? organisation,
    _i3.UserInfoInclude? userInfo,
  }) {
    _organisation = organisation;
    _userInfo = userInfo;
  }

  _i2.OrganisationInclude? _organisation;

  _i3.UserInfoInclude? _userInfo;

  @override
  Map<String, _i1.Include?> get includes => {
        'organisation': _organisation,
        'userInfo': _userInfo,
      };

  @override
  _i1.Table get table => OrganisationMember.t;
}

class OrganisationMemberIncludeList extends _i1.IncludeList {
  OrganisationMemberIncludeList._({
    _i1.WhereExpressionBuilder<OrganisationMemberTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(OrganisationMember.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => OrganisationMember.t;
}

class OrganisationMemberRepository {
  const OrganisationMemberRepository._();

  final attachRow = const OrganisationMemberAttachRowRepository._();

  Future<List<OrganisationMember>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationMemberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrganisationMemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationMemberTable>? orderByList,
    _i1.Transaction? transaction,
    OrganisationMemberInclude? include,
  }) async {
    return session.db.find<OrganisationMember>(
      where: where?.call(OrganisationMember.t),
      orderBy: orderBy?.call(OrganisationMember.t),
      orderByList: orderByList?.call(OrganisationMember.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<OrganisationMember?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationMemberTable>? where,
    int? offset,
    _i1.OrderByBuilder<OrganisationMemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationMemberTable>? orderByList,
    _i1.Transaction? transaction,
    OrganisationMemberInclude? include,
  }) async {
    return session.db.findFirstRow<OrganisationMember>(
      where: where?.call(OrganisationMember.t),
      orderBy: orderBy?.call(OrganisationMember.t),
      orderByList: orderByList?.call(OrganisationMember.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<OrganisationMember?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    OrganisationMemberInclude? include,
  }) async {
    return session.db.findById<OrganisationMember>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<OrganisationMember>> insert(
    _i1.Session session,
    List<OrganisationMember> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<OrganisationMember>(
      rows,
      transaction: transaction,
    );
  }

  Future<OrganisationMember> insertRow(
    _i1.Session session,
    OrganisationMember row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<OrganisationMember>(
      row,
      transaction: transaction,
    );
  }

  Future<List<OrganisationMember>> update(
    _i1.Session session,
    List<OrganisationMember> rows, {
    _i1.ColumnSelections<OrganisationMemberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<OrganisationMember>(
      rows,
      columns: columns?.call(OrganisationMember.t),
      transaction: transaction,
    );
  }

  Future<OrganisationMember> updateRow(
    _i1.Session session,
    OrganisationMember row, {
    _i1.ColumnSelections<OrganisationMemberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<OrganisationMember>(
      row,
      columns: columns?.call(OrganisationMember.t),
      transaction: transaction,
    );
  }

  Future<List<OrganisationMember>> delete(
    _i1.Session session,
    List<OrganisationMember> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<OrganisationMember>(
      rows,
      transaction: transaction,
    );
  }

  Future<OrganisationMember> deleteRow(
    _i1.Session session,
    OrganisationMember row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<OrganisationMember>(
      row,
      transaction: transaction,
    );
  }

  Future<List<OrganisationMember>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrganisationMemberTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<OrganisationMember>(
      where: where(OrganisationMember.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationMemberTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<OrganisationMember>(
      where: where?.call(OrganisationMember.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class OrganisationMemberAttachRowRepository {
  const OrganisationMemberAttachRowRepository._();

  Future<void> organisation(
    _i1.Session session,
    OrganisationMember organisationMember,
    _i2.Organisation organisation, {
    _i1.Transaction? transaction,
  }) async {
    if (organisationMember.id == null) {
      throw ArgumentError.notNull('organisationMember.id');
    }
    if (organisation.id == null) {
      throw ArgumentError.notNull('organisation.id');
    }

    var $organisationMember =
        organisationMember.copyWith(organisationId: organisation.id);
    await session.db.updateRow<OrganisationMember>(
      $organisationMember,
      columns: [OrganisationMember.t.organisationId],
      transaction: transaction,
    );
  }

  Future<void> userInfo(
    _i1.Session session,
    OrganisationMember organisationMember,
    _i3.UserInfo userInfo, {
    _i1.Transaction? transaction,
  }) async {
    if (organisationMember.id == null) {
      throw ArgumentError.notNull('organisationMember.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $organisationMember =
        organisationMember.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<OrganisationMember>(
      $organisationMember,
      columns: [OrganisationMember.t.userInfoId],
      transaction: transaction,
    );
  }
}
