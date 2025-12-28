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

abstract class TechStack implements _i1.SerializableModel {
  TechStack._({
    this.id,
    required this.name,
    required this.icon,
    required this.description,
  });

  factory TechStack({
    int? id,
    required String name,
    required String icon,
    required String description,
  }) = _TechStackImpl;

  factory TechStack.fromJson(Map<String, dynamic> jsonSerialization) {
    return TechStack(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      icon: jsonSerialization['icon'] as String,
      description: jsonSerialization['description'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String icon;

  String description;

  /// Returns a shallow copy of this [TechStack]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TechStack copyWith({
    int? id,
    String? name,
    String? icon,
    String? description,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'TechStack',
      if (id != null) 'id': id,
      'name': name,
      'icon': icon,
      'description': description,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TechStackImpl extends TechStack {
  _TechStackImpl({
    int? id,
    required String name,
    required String icon,
    required String description,
  }) : super._(
         id: id,
         name: name,
         icon: icon,
         description: description,
       );

  /// Returns a shallow copy of this [TechStack]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TechStack copyWith({
    Object? id = _Undefined,
    String? name,
    String? icon,
    String? description,
  }) {
    return TechStack(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      description: description ?? this.description,
    );
  }
}
