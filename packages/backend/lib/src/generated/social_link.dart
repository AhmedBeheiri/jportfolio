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

abstract class SocialLink
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = SocialLinkTable();

  static const db = SocialLinkRepository._();

  @override
  int? id;

  String platform;

  String url;

  String icon;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SocialLink',
      if (id != null) 'id': id,
      'platform': platform,
      'url': url,
      'icon': icon,
    };
  }

  static SocialLinkInclude include() {
    return SocialLinkInclude._();
  }

  static SocialLinkIncludeList includeList({
    _i1.WhereExpressionBuilder<SocialLinkTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SocialLinkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SocialLinkTable>? orderByList,
    SocialLinkInclude? include,
  }) {
    return SocialLinkIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SocialLink.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SocialLink.t),
      include: include,
    );
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

class SocialLinkUpdateTable extends _i1.UpdateTable<SocialLinkTable> {
  SocialLinkUpdateTable(super.table);

  _i1.ColumnValue<String, String> platform(String value) => _i1.ColumnValue(
    table.platform,
    value,
  );

  _i1.ColumnValue<String, String> url(String value) => _i1.ColumnValue(
    table.url,
    value,
  );

  _i1.ColumnValue<String, String> icon(String value) => _i1.ColumnValue(
    table.icon,
    value,
  );
}

class SocialLinkTable extends _i1.Table<int?> {
  SocialLinkTable({super.tableRelation}) : super(tableName: 'social_links') {
    updateTable = SocialLinkUpdateTable(this);
    platform = _i1.ColumnString(
      'platform',
      this,
    );
    url = _i1.ColumnString(
      'url',
      this,
    );
    icon = _i1.ColumnString(
      'icon',
      this,
    );
  }

  late final SocialLinkUpdateTable updateTable;

  late final _i1.ColumnString platform;

  late final _i1.ColumnString url;

  late final _i1.ColumnString icon;

  @override
  List<_i1.Column> get columns => [
    id,
    platform,
    url,
    icon,
  ];
}

class SocialLinkInclude extends _i1.IncludeObject {
  SocialLinkInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => SocialLink.t;
}

class SocialLinkIncludeList extends _i1.IncludeList {
  SocialLinkIncludeList._({
    _i1.WhereExpressionBuilder<SocialLinkTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SocialLink.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => SocialLink.t;
}

class SocialLinkRepository {
  const SocialLinkRepository._();

  /// Returns a list of [SocialLink]s matching the given query parameters.
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
  Future<List<SocialLink>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SocialLinkTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SocialLinkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SocialLinkTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SocialLink>(
      where: where?.call(SocialLink.t),
      orderBy: orderBy?.call(SocialLink.t),
      orderByList: orderByList?.call(SocialLink.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [SocialLink] matching the given query parameters.
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
  Future<SocialLink?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SocialLinkTable>? where,
    int? offset,
    _i1.OrderByBuilder<SocialLinkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SocialLinkTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<SocialLink>(
      where: where?.call(SocialLink.t),
      orderBy: orderBy?.call(SocialLink.t),
      orderByList: orderByList?.call(SocialLink.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [SocialLink] by its [id] or null if no such row exists.
  Future<SocialLink?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<SocialLink>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [SocialLink]s in the list and returns the inserted rows.
  ///
  /// The returned [SocialLink]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<SocialLink>> insert(
    _i1.Session session,
    List<SocialLink> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<SocialLink>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [SocialLink] and returns the inserted row.
  ///
  /// The returned [SocialLink] will have its `id` field set.
  Future<SocialLink> insertRow(
    _i1.Session session,
    SocialLink row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<SocialLink>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [SocialLink]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<SocialLink>> update(
    _i1.Session session,
    List<SocialLink> rows, {
    _i1.ColumnSelections<SocialLinkTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<SocialLink>(
      rows,
      columns: columns?.call(SocialLink.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SocialLink]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SocialLink> updateRow(
    _i1.Session session,
    SocialLink row, {
    _i1.ColumnSelections<SocialLinkTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<SocialLink>(
      row,
      columns: columns?.call(SocialLink.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SocialLink] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SocialLink?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<SocialLinkUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<SocialLink>(
      id,
      columnValues: columnValues(SocialLink.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SocialLink]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<SocialLink>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<SocialLinkUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SocialLinkTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SocialLinkTable>? orderBy,
    _i1.OrderByListBuilder<SocialLinkTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<SocialLink>(
      columnValues: columnValues(SocialLink.t.updateTable),
      where: where(SocialLink.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SocialLink.t),
      orderByList: orderByList?.call(SocialLink.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [SocialLink]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<SocialLink>> delete(
    _i1.Session session,
    List<SocialLink> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SocialLink>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [SocialLink].
  Future<SocialLink> deleteRow(
    _i1.Session session,
    SocialLink row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SocialLink>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<SocialLink>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SocialLinkTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SocialLink>(
      where: where(SocialLink.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SocialLinkTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SocialLink>(
      where: where?.call(SocialLink.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
