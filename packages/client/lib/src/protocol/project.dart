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
import 'work_experience.dart' as _i2;
import 'package:backend_client/src/protocol/protocol.dart' as _i3;

abstract class Project implements _i1.SerializableModel {
  Project._({
    this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.badge,
    required this.badgeIcon,
    required this.tags,
    this.secondaryActionText,
    this.secondaryActionUrl,
    this.secondaryActionIcon,
    this.workedAt,
  });

  factory Project({
    int? id,
    required String title,
    required String description,
    required String imageUrl,
    required String badge,
    required String badgeIcon,
    required List<String> tags,
    String? secondaryActionText,
    String? secondaryActionUrl,
    String? secondaryActionIcon,
    _i2.WorkExperience? workedAt,
  }) = _ProjectImpl;

  factory Project.fromJson(Map<String, dynamic> jsonSerialization) {
    return Project(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      imageUrl: jsonSerialization['imageUrl'] as String,
      badge: jsonSerialization['badge'] as String,
      badgeIcon: jsonSerialization['badgeIcon'] as String,
      tags: _i3.Protocol().deserialize<List<String>>(jsonSerialization['tags']),
      secondaryActionText: jsonSerialization['secondaryActionText'] as String?,
      secondaryActionUrl: jsonSerialization['secondaryActionUrl'] as String?,
      secondaryActionIcon: jsonSerialization['secondaryActionIcon'] as String?,
      workedAt: jsonSerialization['workedAt'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.WorkExperience>(
              jsonSerialization['workedAt'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String description;

  String imageUrl;

  String badge;

  String badgeIcon;

  List<String> tags;

  String? secondaryActionText;

  String? secondaryActionUrl;

  String? secondaryActionIcon;

  _i2.WorkExperience? workedAt;

  /// Returns a shallow copy of this [Project]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Project copyWith({
    int? id,
    String? title,
    String? description,
    String? imageUrl,
    String? badge,
    String? badgeIcon,
    List<String>? tags,
    String? secondaryActionText,
    String? secondaryActionUrl,
    String? secondaryActionIcon,
    _i2.WorkExperience? workedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Project',
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'badge': badge,
      'badgeIcon': badgeIcon,
      'tags': tags.toJson(),
      if (secondaryActionText != null)
        'secondaryActionText': secondaryActionText,
      if (secondaryActionUrl != null) 'secondaryActionUrl': secondaryActionUrl,
      if (secondaryActionIcon != null)
        'secondaryActionIcon': secondaryActionIcon,
      if (workedAt != null) 'workedAt': workedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProjectImpl extends Project {
  _ProjectImpl({
    int? id,
    required String title,
    required String description,
    required String imageUrl,
    required String badge,
    required String badgeIcon,
    required List<String> tags,
    String? secondaryActionText,
    String? secondaryActionUrl,
    String? secondaryActionIcon,
    _i2.WorkExperience? workedAt,
  }) : super._(
         id: id,
         title: title,
         description: description,
         imageUrl: imageUrl,
         badge: badge,
         badgeIcon: badgeIcon,
         tags: tags,
         secondaryActionText: secondaryActionText,
         secondaryActionUrl: secondaryActionUrl,
         secondaryActionIcon: secondaryActionIcon,
         workedAt: workedAt,
       );

  /// Returns a shallow copy of this [Project]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Project copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    String? imageUrl,
    String? badge,
    String? badgeIcon,
    List<String>? tags,
    Object? secondaryActionText = _Undefined,
    Object? secondaryActionUrl = _Undefined,
    Object? secondaryActionIcon = _Undefined,
    Object? workedAt = _Undefined,
  }) {
    return Project(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      badge: badge ?? this.badge,
      badgeIcon: badgeIcon ?? this.badgeIcon,
      tags: tags ?? this.tags.map((e0) => e0).toList(),
      secondaryActionText: secondaryActionText is String?
          ? secondaryActionText
          : this.secondaryActionText,
      secondaryActionUrl: secondaryActionUrl is String?
          ? secondaryActionUrl
          : this.secondaryActionUrl,
      secondaryActionIcon: secondaryActionIcon is String?
          ? secondaryActionIcon
          : this.secondaryActionIcon,
      workedAt: workedAt is _i2.WorkExperience?
          ? workedAt
          : this.workedAt?.copyWith(),
    );
  }
}
