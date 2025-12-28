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

abstract class About implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = AboutTable();

  static const db = AboutRepository._();

  @override
  int? id;

  String title;

  String description;

  String location;

  String education;

  String? funFact;

  String imageUrl;

  String resumeUrl;

  String email;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static AboutInclude include() {
    return AboutInclude._();
  }

  static AboutIncludeList includeList({
    _i1.WhereExpressionBuilder<AboutTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AboutTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AboutTable>? orderByList,
    AboutInclude? include,
  }) {
    return AboutIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(About.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(About.t),
      include: include,
    );
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

class AboutUpdateTable extends _i1.UpdateTable<AboutTable> {
  AboutUpdateTable(super.table);

  _i1.ColumnValue<String, String> title(String value) => _i1.ColumnValue(
    table.title,
    value,
  );

  _i1.ColumnValue<String, String> description(String value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<String, String> location(String value) => _i1.ColumnValue(
    table.location,
    value,
  );

  _i1.ColumnValue<String, String> education(String value) => _i1.ColumnValue(
    table.education,
    value,
  );

  _i1.ColumnValue<String, String> funFact(String? value) => _i1.ColumnValue(
    table.funFact,
    value,
  );

  _i1.ColumnValue<String, String> imageUrl(String value) => _i1.ColumnValue(
    table.imageUrl,
    value,
  );

  _i1.ColumnValue<String, String> resumeUrl(String value) => _i1.ColumnValue(
    table.resumeUrl,
    value,
  );

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
    value,
  );
}

class AboutTable extends _i1.Table<int?> {
  AboutTable({super.tableRelation}) : super(tableName: 'about') {
    updateTable = AboutUpdateTable(this);
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
    education = _i1.ColumnString(
      'education',
      this,
    );
    funFact = _i1.ColumnString(
      'funFact',
      this,
    );
    imageUrl = _i1.ColumnString(
      'imageUrl',
      this,
    );
    resumeUrl = _i1.ColumnString(
      'resumeUrl',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
  }

  late final AboutUpdateTable updateTable;

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnString location;

  late final _i1.ColumnString education;

  late final _i1.ColumnString funFact;

  late final _i1.ColumnString imageUrl;

  late final _i1.ColumnString resumeUrl;

  late final _i1.ColumnString email;

  @override
  List<_i1.Column> get columns => [
    id,
    title,
    description,
    location,
    education,
    funFact,
    imageUrl,
    resumeUrl,
    email,
  ];
}

class AboutInclude extends _i1.IncludeObject {
  AboutInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => About.t;
}

class AboutIncludeList extends _i1.IncludeList {
  AboutIncludeList._({
    _i1.WhereExpressionBuilder<AboutTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(About.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => About.t;
}

class AboutRepository {
  const AboutRepository._();

  /// Returns a list of [About]s matching the given query parameters.
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
  Future<List<About>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AboutTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AboutTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AboutTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<About>(
      where: where?.call(About.t),
      orderBy: orderBy?.call(About.t),
      orderByList: orderByList?.call(About.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [About] matching the given query parameters.
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
  Future<About?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AboutTable>? where,
    int? offset,
    _i1.OrderByBuilder<AboutTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AboutTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<About>(
      where: where?.call(About.t),
      orderBy: orderBy?.call(About.t),
      orderByList: orderByList?.call(About.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [About] by its [id] or null if no such row exists.
  Future<About?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<About>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [About]s in the list and returns the inserted rows.
  ///
  /// The returned [About]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<About>> insert(
    _i1.Session session,
    List<About> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<About>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [About] and returns the inserted row.
  ///
  /// The returned [About] will have its `id` field set.
  Future<About> insertRow(
    _i1.Session session,
    About row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<About>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [About]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<About>> update(
    _i1.Session session,
    List<About> rows, {
    _i1.ColumnSelections<AboutTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<About>(
      rows,
      columns: columns?.call(About.t),
      transaction: transaction,
    );
  }

  /// Updates a single [About]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<About> updateRow(
    _i1.Session session,
    About row, {
    _i1.ColumnSelections<AboutTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<About>(
      row,
      columns: columns?.call(About.t),
      transaction: transaction,
    );
  }

  /// Updates a single [About] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<About?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<AboutUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<About>(
      id,
      columnValues: columnValues(About.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [About]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<About>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<AboutUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<AboutTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AboutTable>? orderBy,
    _i1.OrderByListBuilder<AboutTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<About>(
      columnValues: columnValues(About.t.updateTable),
      where: where(About.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(About.t),
      orderByList: orderByList?.call(About.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [About]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<About>> delete(
    _i1.Session session,
    List<About> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<About>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [About].
  Future<About> deleteRow(
    _i1.Session session,
    About row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<About>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<About>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AboutTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<About>(
      where: where(About.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AboutTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<About>(
      where: where?.call(About.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
