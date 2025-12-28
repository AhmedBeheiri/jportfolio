/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'about.dart' as _i2;
import 'contact_message.dart' as _i3;
import 'greetings/greeting.dart' as _i4;
import 'project.dart' as _i5;
import 'social_link.dart' as _i6;
import 'tech_stack.dart' as _i7;
import 'work_experience.dart' as _i8;
import 'package:backend_client/src/protocol/contact_message.dart' as _i9;
import 'package:backend_client/src/protocol/work_experience.dart' as _i10;
import 'package:backend_client/src/protocol/tech_stack.dart' as _i11;
import 'package:backend_client/src/protocol/social_link.dart' as _i12;
import 'package:backend_client/src/protocol/project.dart' as _i13;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i14;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i15;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i16;
export 'about.dart';
export 'contact_message.dart';
export 'greetings/greeting.dart';
export 'project.dart';
export 'social_link.dart';
export 'tech_stack.dart';
export 'work_experience.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.About) {
      return _i2.About.fromJson(data) as T;
    }
    if (t == _i3.ContactMessage) {
      return _i3.ContactMessage.fromJson(data) as T;
    }
    if (t == _i4.Greeting) {
      return _i4.Greeting.fromJson(data) as T;
    }
    if (t == _i5.Project) {
      return _i5.Project.fromJson(data) as T;
    }
    if (t == _i6.SocialLink) {
      return _i6.SocialLink.fromJson(data) as T;
    }
    if (t == _i7.TechStack) {
      return _i7.TechStack.fromJson(data) as T;
    }
    if (t == _i8.WorkExperience) {
      return _i8.WorkExperience.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.About?>()) {
      return (data != null ? _i2.About.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.ContactMessage?>()) {
      return (data != null ? _i3.ContactMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Greeting?>()) {
      return (data != null ? _i4.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Project?>()) {
      return (data != null ? _i5.Project.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.SocialLink?>()) {
      return (data != null ? _i6.SocialLink.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.TechStack?>()) {
      return (data != null ? _i7.TechStack.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.WorkExperience?>()) {
      return (data != null ? _i8.WorkExperience.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == List<_i9.ContactMessage>) {
      return (data as List)
              .map((e) => deserialize<_i9.ContactMessage>(e))
              .toList()
          as T;
    }
    if (t == List<_i10.WorkExperience>) {
      return (data as List)
              .map((e) => deserialize<_i10.WorkExperience>(e))
              .toList()
          as T;
    }
    if (t == List<_i11.TechStack>) {
      return (data as List).map((e) => deserialize<_i11.TechStack>(e)).toList()
          as T;
    }
    if (t == List<_i12.SocialLink>) {
      return (data as List).map((e) => deserialize<_i12.SocialLink>(e)).toList()
          as T;
    }
    if (t == List<_i13.Project>) {
      return (data as List).map((e) => deserialize<_i13.Project>(e)).toList()
          as T;
    }
    try {
      return _i14.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i15.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i16.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.About => 'About',
      _i3.ContactMessage => 'ContactMessage',
      _i4.Greeting => 'Greeting',
      _i5.Project => 'Project',
      _i6.SocialLink => 'SocialLink',
      _i7.TechStack => 'TechStack',
      _i8.WorkExperience => 'WorkExperience',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('backend.', '');
    }

    switch (data) {
      case _i2.About():
        return 'About';
      case _i3.ContactMessage():
        return 'ContactMessage';
      case _i4.Greeting():
        return 'Greeting';
      case _i5.Project():
        return 'Project';
      case _i6.SocialLink():
        return 'SocialLink';
      case _i7.TechStack():
        return 'TechStack';
      case _i8.WorkExperience():
        return 'WorkExperience';
    }
    className = _i14.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    className = _i15.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i16.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'About') {
      return deserialize<_i2.About>(data['data']);
    }
    if (dataClassName == 'ContactMessage') {
      return deserialize<_i3.ContactMessage>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i4.Greeting>(data['data']);
    }
    if (dataClassName == 'Project') {
      return deserialize<_i5.Project>(data['data']);
    }
    if (dataClassName == 'SocialLink') {
      return deserialize<_i6.SocialLink>(data['data']);
    }
    if (dataClassName == 'TechStack') {
      return deserialize<_i7.TechStack>(data['data']);
    }
    if (dataClassName == 'WorkExperience') {
      return deserialize<_i8.WorkExperience>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i14.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i15.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i16.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
