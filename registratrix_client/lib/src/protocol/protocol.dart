/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'error_message.dart' as _i2;
import 'organisation.dart' as _i3;
import 'organisation_member.dart' as _i4;
import 'super_user.dart' as _i5;
import 'package:registratrix_client/src/protocol/organisation.dart' as _i6;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i7;
export 'error_message.dart';
export 'organisation.dart';
export 'organisation_member.dart';
export 'super_user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.ErrorMessage) {
      return _i2.ErrorMessage.fromJson(data) as T;
    }
    if (t == _i3.Organisation) {
      return _i3.Organisation.fromJson(data) as T;
    }
    if (t == _i4.OrganisationMember) {
      return _i4.OrganisationMember.fromJson(data) as T;
    }
    if (t == _i5.SuperUser) {
      return _i5.SuperUser.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.ErrorMessage?>()) {
      return (data != null ? _i2.ErrorMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Organisation?>()) {
      return (data != null ? _i3.Organisation.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.OrganisationMember?>()) {
      return (data != null ? _i4.OrganisationMember.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.SuperUser?>()) {
      return (data != null ? _i5.SuperUser.fromJson(data) : null) as T;
    }
    if (t == List<_i6.Organisation>) {
      return (data as List)
          .map((e) => deserialize<_i6.Organisation>(e))
          .toList() as dynamic;
    }
    try {
      return _i7.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.ErrorMessage) {
      return 'ErrorMessage';
    }
    if (data is _i3.Organisation) {
      return 'Organisation';
    }
    if (data is _i4.OrganisationMember) {
      return 'OrganisationMember';
    }
    if (data is _i5.SuperUser) {
      return 'SuperUser';
    }
    className = _i7.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ErrorMessage') {
      return deserialize<_i2.ErrorMessage>(data['data']);
    }
    if (data['className'] == 'Organisation') {
      return deserialize<_i3.Organisation>(data['data']);
    }
    if (data['className'] == 'OrganisationMember') {
      return deserialize<_i4.OrganisationMember>(data['data']);
    }
    if (data['className'] == 'SuperUser') {
      return deserialize<_i5.SuperUser>(data['data']);
    }
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i7.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
