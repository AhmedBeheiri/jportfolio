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
import 'package:backend_client/src/protocol/protocol.dart' as _i2;

abstract class WorkExperience implements _i1.SerializableModel {
  WorkExperience._({
    this.id,
    required this.companyName,
    required this.role,
    required this.start,
    this.end,
    required this.description,
    required this.imageUrl,
    required this.skills,
    this.link,
  });

  factory WorkExperience({
    int? id,
    required String companyName,
    required String role,
    required DateTime start,
    DateTime? end,
    required String description,
    required String imageUrl,
    required List<String> skills,
    String? link,
  }) = _WorkExperienceImpl;

  factory WorkExperience.fromJson(Map<String, dynamic> jsonSerialization) {
    return WorkExperience(
      id: jsonSerialization['id'] as int?,
      companyName: jsonSerialization['companyName'] as String,
      role: jsonSerialization['role'] as String,
      start: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['start']),
      end: jsonSerialization['end'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['end']),
      description: jsonSerialization['description'] as String,
      imageUrl: jsonSerialization['imageUrl'] as String,
      skills: _i2.Protocol().deserialize<List<String>>(
        jsonSerialization['skills'],
      ),
      link: jsonSerialization['link'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String companyName;

  String role;

  DateTime start;

  DateTime? end;

  String description;

  String imageUrl;

  List<String> skills;

  String? link;

  /// Returns a shallow copy of this [WorkExperience]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  WorkExperience copyWith({
    int? id,
    String? companyName,
    String? role,
    DateTime? start,
    DateTime? end,
    String? description,
    String? imageUrl,
    List<String>? skills,
    String? link,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'WorkExperience',
      if (id != null) 'id': id,
      'companyName': companyName,
      'role': role,
      'start': start.toJson(),
      if (end != null) 'end': end?.toJson(),
      'description': description,
      'imageUrl': imageUrl,
      'skills': skills.toJson(),
      if (link != null) 'link': link,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WorkExperienceImpl extends WorkExperience {
  _WorkExperienceImpl({
    int? id,
    required String companyName,
    required String role,
    required DateTime start,
    DateTime? end,
    required String description,
    required String imageUrl,
    required List<String> skills,
    String? link,
  }) : super._(
         id: id,
         companyName: companyName,
         role: role,
         start: start,
         end: end,
         description: description,
         imageUrl: imageUrl,
         skills: skills,
         link: link,
       );

  /// Returns a shallow copy of this [WorkExperience]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  WorkExperience copyWith({
    Object? id = _Undefined,
    String? companyName,
    String? role,
    DateTime? start,
    Object? end = _Undefined,
    String? description,
    String? imageUrl,
    List<String>? skills,
    Object? link = _Undefined,
  }) {
    return WorkExperience(
      id: id is int? ? id : this.id,
      companyName: companyName ?? this.companyName,
      role: role ?? this.role,
      start: start ?? this.start,
      end: end is DateTime? ? end : this.end,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      skills: skills ?? this.skills.map((e0) => e0).toList(),
      link: link is String? ? link : this.link,
    );
  }
}
