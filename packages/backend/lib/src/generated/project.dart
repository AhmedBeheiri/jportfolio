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
import 'package:serverpod/serverpod.dart' as _i1;
import 'work_experience.dart' as _i2;
import 'package:backend_server/src/generated/protocol.dart' as _i3;

abstract class Project
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ProjectTable();

  static const db = ProjectRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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
      if (workedAt != null) 'workedAt': workedAt?.toJsonForProtocol(),
    };
  }

  static ProjectInclude include() {
    return ProjectInclude._();
  }

  static ProjectIncludeList includeList({
    _i1.WhereExpressionBuilder<ProjectTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProjectTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProjectTable>? orderByList,
    ProjectInclude? include,
  }) {
    return ProjectIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Project.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Project.t),
      include: include,
    );
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

class ProjectUpdateTable extends _i1.UpdateTable<ProjectTable> {
  ProjectUpdateTable(super.table);

  _i1.ColumnValue<String, String> title(String value) => _i1.ColumnValue(
    table.title,
    value,
  );

  _i1.ColumnValue<String, String> description(String value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<String, String> imageUrl(String value) => _i1.ColumnValue(
    table.imageUrl,
    value,
  );

  _i1.ColumnValue<String, String> badge(String value) => _i1.ColumnValue(
    table.badge,
    value,
  );

  _i1.ColumnValue<String, String> badgeIcon(String value) => _i1.ColumnValue(
    table.badgeIcon,
    value,
  );

  _i1.ColumnValue<List<String>, List<String>> tags(List<String> value) =>
      _i1.ColumnValue(
        table.tags,
        value,
      );

  _i1.ColumnValue<String, String> secondaryActionText(String? value) =>
      _i1.ColumnValue(
        table.secondaryActionText,
        value,
      );

  _i1.ColumnValue<String, String> secondaryActionUrl(String? value) =>
      _i1.ColumnValue(
        table.secondaryActionUrl,
        value,
      );

  _i1.ColumnValue<String, String> secondaryActionIcon(String? value) =>
      _i1.ColumnValue(
        table.secondaryActionIcon,
        value,
      );

  _i1.ColumnValue<_i2.WorkExperience, _i2.WorkExperience> workedAt(
    _i2.WorkExperience? value,
  ) => _i1.ColumnValue(
    table.workedAt,
    value,
  );
}

class ProjectTable extends _i1.Table<int?> {
  ProjectTable({super.tableRelation}) : super(tableName: 'projects') {
    updateTable = ProjectUpdateTable(this);
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    imageUrl = _i1.ColumnString(
      'imageUrl',
      this,
    );
    badge = _i1.ColumnString(
      'badge',
      this,
    );
    badgeIcon = _i1.ColumnString(
      'badgeIcon',
      this,
    );
    tags = _i1.ColumnSerializable<List<String>>(
      'tags',
      this,
    );
    secondaryActionText = _i1.ColumnString(
      'secondaryActionText',
      this,
    );
    secondaryActionUrl = _i1.ColumnString(
      'secondaryActionUrl',
      this,
    );
    secondaryActionIcon = _i1.ColumnString(
      'secondaryActionIcon',
      this,
    );
    workedAt = _i1.ColumnSerializable<_i2.WorkExperience>(
      'workedAt',
      this,
    );
  }

  late final ProjectUpdateTable updateTable;

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnString imageUrl;

  late final _i1.ColumnString badge;

  late final _i1.ColumnString badgeIcon;

  late final _i1.ColumnSerializable<List<String>> tags;

  late final _i1.ColumnString secondaryActionText;

  late final _i1.ColumnString secondaryActionUrl;

  late final _i1.ColumnString secondaryActionIcon;

  late final _i1.ColumnSerializable<_i2.WorkExperience> workedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    title,
    description,
    imageUrl,
    badge,
    badgeIcon,
    tags,
    secondaryActionText,
    secondaryActionUrl,
    secondaryActionIcon,
    workedAt,
  ];
}

class ProjectInclude extends _i1.IncludeObject {
  ProjectInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Project.t;
}

class ProjectIncludeList extends _i1.IncludeList {
  ProjectIncludeList._({
    _i1.WhereExpressionBuilder<ProjectTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Project.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Project.t;
}

class ProjectRepository {
  const ProjectRepository._();

  /// Returns a list of [Project]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Project>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProjectTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProjectTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProjectTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Project>(
      where: where?.call(Project.t),
      orderBy: orderBy?.call(Project.t),
      orderByList: orderByList?.call(Project.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Project] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Project?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProjectTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProjectTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProjectTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Project>(
      where: where?.call(Project.t),
      orderBy: orderBy?.call(Project.t),
      orderByList: orderByList?.call(Project.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Project] by its [id] or null if no such row exists.
  Future<Project?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Project>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Project]s in the list and returns the inserted rows.
  ///
  /// The returned [Project]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Project>> insert(
    _i1.Session session,
    List<Project> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Project>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Project] and returns the inserted row.
  ///
  /// The returned [Project] will have its `id` field set.
  Future<Project> insertRow(
    _i1.Session session,
    Project row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Project>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Project]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Project>> update(
    _i1.Session session,
    List<Project> rows, {
    _i1.ColumnSelections<ProjectTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Project>(
      rows,
      columns: columns?.call(Project.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Project]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Project> updateRow(
    _i1.Session session,
    Project row, {
    _i1.ColumnSelections<ProjectTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Project>(
      row,
      columns: columns?.call(Project.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Project] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Project?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ProjectUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Project>(
      id,
      columnValues: columnValues(Project.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Project]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Project>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ProjectUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ProjectTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProjectTable>? orderBy,
    _i1.OrderByListBuilder<ProjectTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Project>(
      columnValues: columnValues(Project.t.updateTable),
      where: where(Project.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Project.t),
      orderByList: orderByList?.call(Project.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Project]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Project>> delete(
    _i1.Session session,
    List<Project> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Project>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Project].
  Future<Project> deleteRow(
    _i1.Session session,
    Project row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Project>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Project>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProjectTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Project>(
      where: where(Project.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProjectTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Project>(
      where: where?.call(Project.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
