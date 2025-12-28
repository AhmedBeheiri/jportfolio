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

abstract class About implements _i1.SerializableModel {
  About._({
    this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.education,
    this.funFact,
    required this.imageUrl,
    required this.resumeUrl,
    required this.email,
  });

  factory About({
    int? id,
    required String title,
    required String description,
    required String location,
    required String education,
    String? funFact,
    required String imageUrl,
    required String resumeUrl,
    required String email,
  }) = _AboutImpl;

  factory About.fromJson(Map<String, dynamic> jsonSerialization) {
    return About(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      location: jsonSerialization['location'] as String,
      education: jsonSerialization['education'] as String,
      funFact: jsonSerialization['funFact'] as String?,
      imageUrl: jsonSerialization['imageUrl'] as String,
      resumeUrl: jsonSerialization['resumeUrl'] as String,
      email: jsonSerialization['email'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String description;

  String location;

  String education;

  String? funFact;

  String imageUrl;

  String resumeUrl;

  String email;

  /// Returns a shallow copy of this [About]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  About copyWith({
    int? id,
    String? title,
    String? description,
    String? location,
    String? education,
    String? funFact,
    String? imageUrl,
    String? resumeUrl,
    String? email,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'About',
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'location': location,
      'education': education,
      if (funFact != null) 'funFact': funFact,
      'imageUrl': imageUrl,
      'resumeUrl': resumeUrl,
      'email': email,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AboutImpl extends About {
  _AboutImpl({
    int? id,
    required String title,
    required String description,
    required String location,
    required String education,
    String? funFact,
    required String imageUrl,
    required String resumeUrl,
    required String email,
  }) : super._(
         id: id,
         title: title,
         description: description,
         location: location,
         education: education,
         funFact: funFact,
         imageUrl: imageUrl,
         resumeUrl: resumeUrl,
         email: email,
       );

  /// Returns a shallow copy of this [About]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  About copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    String? location,
    String? education,
    Object? funFact = _Undefined,
    String? imageUrl,
    String? resumeUrl,
    String? email,
  }) {
    return About(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      location: location ?? this.location,
      education: education ?? this.education,
      funFact: funFact is String? ? funFact : this.funFact,
      imageUrl: imageUrl ?? this.imageUrl,
      resumeUrl: resumeUrl ?? this.resumeUrl,
      email: email ?? this.email,
    );
  }
}
