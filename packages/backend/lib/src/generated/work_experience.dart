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
import 'package:backend_server/src/generated/protocol.dart' as _i2;

abstract class WorkExperience
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = WorkExperienceTable();

  static const db = WorkExperienceRepository._();

  @override
  int? id;

  String companyName;

  String role;

  DateTime start;

  DateTime? end;

  String description;

  String imageUrl;

  List<String> skills;

  String? link;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static WorkExperienceInclude include() {
    return WorkExperienceInclude._();
  }

  static WorkExperienceIncludeList includeList({
    _i1.WhereExpressionBuilder<WorkExperienceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WorkExperienceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WorkExperienceTable>? orderByList,
    WorkExperienceInclude? include,
  }) {
    return WorkExperienceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WorkExperience.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(WorkExperience.t),
      include: include,
    );
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

class WorkExperienceUpdateTable extends _i1.UpdateTable<WorkExperienceTable> {
  WorkExperienceUpdateTable(super.table);

  _i1.ColumnValue<String, String> companyName(String value) => _i1.ColumnValue(
    table.companyName,
    value,
  );

  _i1.ColumnValue<String, String> role(String value) => _i1.ColumnValue(
    table.role,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> start(DateTime value) => _i1.ColumnValue(
    table.start,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> end(DateTime? value) => _i1.ColumnValue(
    table.end,
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

  _i1.ColumnValue<List<String>, List<String>> skills(List<String> value) =>
      _i1.ColumnValue(
        table.skills,
        value,
      );

  _i1.ColumnValue<String, String> link(String? value) => _i1.ColumnValue(
    table.link,
    value,
  );
}

class WorkExperienceTable extends _i1.Table<int?> {
  WorkExperienceTable({super.tableRelation})
    : super(tableName: 'work_experience') {
    updateTable = WorkExperienceUpdateTable(this);
    companyName = _i1.ColumnString(
      'companyName',
      this,
    );
    role = _i1.ColumnString(
      'role',
      this,
    );
    start = _i1.ColumnDateTime(
      'start',
      this,
    );
    end = _i1.ColumnDateTime(
      'end',
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
    skills = _i1.ColumnSerializable<List<String>>(
      'skills',
      this,
    );
    link = _i1.ColumnString(
      'link',
      this,
    );
  }

  late final WorkExperienceUpdateTable updateTable;

  late final _i1.ColumnString companyName;

  late final _i1.ColumnString role;

  late final _i1.ColumnDateTime start;

  late final _i1.ColumnDateTime end;

  late final _i1.ColumnString description;

  late final _i1.ColumnString imageUrl;

  late final _i1.ColumnSerializable<List<String>> skills;

  late final _i1.ColumnString link;

  @override
  List<_i1.Column> get columns => [
    id,
    companyName,
    role,
    start,
    end,
    description,
    imageUrl,
    skills,
    link,
  ];
}

class WorkExperienceInclude extends _i1.IncludeObject {
  WorkExperienceInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => WorkExperience.t;
}

class WorkExperienceIncludeList extends _i1.IncludeList {
  WorkExperienceIncludeList._({
    _i1.WhereExpressionBuilder<WorkExperienceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(WorkExperience.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => WorkExperience.t;
}

class WorkExperienceRepository {
  const WorkExperienceRepository._();

  /// Returns a list of [WorkExperience]s matching the given query parameters.
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
  Future<List<WorkExperience>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WorkExperienceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WorkExperienceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WorkExperienceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<WorkExperience>(
      where: where?.call(WorkExperience.t),
      orderBy: orderBy?.call(WorkExperience.t),
      orderByList: orderByList?.call(WorkExperience.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [WorkExperience] matching the given query parameters.
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
  Future<WorkExperience?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WorkExperienceTable>? where,
    int? offset,
    _i1.OrderByBuilder<WorkExperienceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WorkExperienceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<WorkExperience>(
      where: where?.call(WorkExperience.t),
      orderBy: orderBy?.call(WorkExperience.t),
      orderByList: orderByList?.call(WorkExperience.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [WorkExperience] by its [id] or null if no such row exists.
  Future<WorkExperience?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<WorkExperience>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [WorkExperience]s in the list and returns the inserted rows.
  ///
  /// The returned [WorkExperience]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<WorkExperience>> insert(
    _i1.Session session,
    List<WorkExperience> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<WorkExperience>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [WorkExperience] and returns the inserted row.
  ///
  /// The returned [WorkExperience] will have its `id` field set.
  Future<WorkExperience> insertRow(
    _i1.Session session,
    WorkExperience row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<WorkExperience>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [WorkExperience]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<WorkExperience>> update(
    _i1.Session session,
    List<WorkExperience> rows, {
    _i1.ColumnSelections<WorkExperienceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<WorkExperience>(
      rows,
      columns: columns?.call(WorkExperience.t),
      transaction: transaction,
    );
  }

  /// Updates a single [WorkExperience]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<WorkExperience> updateRow(
    _i1.Session session,
    WorkExperience row, {
    _i1.ColumnSelections<WorkExperienceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<WorkExperience>(
      row,
      columns: columns?.call(WorkExperience.t),
      transaction: transaction,
    );
  }

  /// Updates a single [WorkExperience] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<WorkExperience?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<WorkExperienceUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<WorkExperience>(
      id,
      columnValues: columnValues(WorkExperience.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [WorkExperience]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<WorkExperience>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<WorkExperienceUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<WorkExperienceTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WorkExperienceTable>? orderBy,
    _i1.OrderByListBuilder<WorkExperienceTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<WorkExperience>(
      columnValues: columnValues(WorkExperience.t.updateTable),
      where: where(WorkExperience.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WorkExperience.t),
      orderByList: orderByList?.call(WorkExperience.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [WorkExperience]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<WorkExperience>> delete(
    _i1.Session session,
    List<WorkExperience> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WorkExperience>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [WorkExperience].
  Future<WorkExperience> deleteRow(
    _i1.Session session,
    WorkExperience row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<WorkExperience>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<WorkExperience>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WorkExperienceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<WorkExperience>(
      where: where(WorkExperience.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WorkExperienceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WorkExperience>(
      where: where?.call(WorkExperience.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
