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

abstract class SocialLink implements _i1.SerializableModel {
  SocialLink._({
    this.id,
    required this.platform,
    required this.url,
    required this.icon,
  });

  factory SocialLink({
    int? id,
    required String platform,
    required String url,
    required String icon,
  }) = _SocialLinkImpl;

  factory SocialLink.fromJson(Map<String, dynamic> jsonSerialization) {
    return SocialLink(
      id: jsonSerialization['id'] as int?,
      platform: jsonSerialization['platform'] as String,
      url: jsonSerialization['url'] as String,
      icon: jsonSerialization['icon'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String platform;

  String url;

  String icon;

  /// Returns a shallow copy of this [SocialLink]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SocialLink copyWith({
    int? id,
    String? platform,
    String? url,
    String? icon,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SocialLink',
      if (id != null) 'id': id,
      'platform': platform,
      'url': url,
      'icon': icon,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SocialLinkImpl extends SocialLink {
  _SocialLinkImpl({
    int? id,
    required String platform,
    required String url,
    required String icon,
  }) : super._(
         id: id,
         platform: platform,
         url: url,
         icon: icon,
       );

  /// Returns a shallow copy of this [SocialLink]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SocialLink copyWith({
    Object? id = _Undefined,
    String? platform,
    String? url,
    String? icon,
  }) {
    return SocialLink(
      id: id is int? ? id : this.id,
      platform: platform ?? this.platform,
      url: url ?? this.url,
      icon: icon ?? this.icon,
    );
  }
}
