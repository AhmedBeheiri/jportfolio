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

abstract class TechStack
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = TechStackTable();

  static const db = TechStackRepository._();

  @override
  int? id;

  String name;

  String icon;

  String description;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'TechStack',
      if (id != null) 'id': id,
      'name': name,
      'icon': icon,
      'description': description,
    };
  }

  static TechStackInclude include() {
    return TechStackInclude._();
  }

  static TechStackIncludeList includeList({
    _i1.WhereExpressionBuilder<TechStackTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TechStackTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TechStackTable>? orderByList,
    TechStackInclude? include,
  }) {
    return TechStackIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TechStack.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TechStack.t),
      include: include,
    );
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

class TechStackUpdateTable extends _i1.UpdateTable<TechStackTable> {
  TechStackUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> icon(String value) => _i1.ColumnValue(
    table.icon,
    value,
  );

  _i1.ColumnValue<String, String> description(String value) => _i1.ColumnValue(
    table.description,
    value,
  );
}

class TechStackTable extends _i1.Table<int?> {
  TechStackTable({super.tableRelation}) : super(tableName: 'tech_stacks') {
    updateTable = TechStackUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    icon = _i1.ColumnString(
      'icon',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
  }

  late final TechStackUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString icon;

  late final _i1.ColumnString description;

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    icon,
    description,
  ];
}

class TechStackInclude extends _i1.IncludeObject {
  TechStackInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => TechStack.t;
}

class TechStackIncludeList extends _i1.IncludeList {
  TechStackIncludeList._({
    _i1.WhereExpressionBuilder<TechStackTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TechStack.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => TechStack.t;
}

class TechStackRepository {
  const TechStackRepository._();

  /// Returns a list of [TechStack]s matching the given query parameters.
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
  Future<List<TechStack>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TechStackTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TechStackTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TechStackTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TechStack>(
      where: where?.call(TechStack.t),
      orderBy: orderBy?.call(TechStack.t),
      orderByList: orderByList?.call(TechStack.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [TechStack] matching the given query parameters.
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
  Future<TechStack?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TechStackTable>? where,
    int? offset,
    _i1.OrderByBuilder<TechStackTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TechStackTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<TechStack>(
      where: where?.call(TechStack.t),
      orderBy: orderBy?.call(TechStack.t),
      orderByList: orderByList?.call(TechStack.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [TechStack] by its [id] or null if no such row exists.
  Future<TechStack?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<TechStack>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [TechStack]s in the list and returns the inserted rows.
  ///
  /// The returned [TechStack]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<TechStack>> insert(
    _i1.Session session,
    List<TechStack> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<TechStack>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [TechStack] and returns the inserted row.
  ///
  /// The returned [TechStack] will have its `id` field set.
  Future<TechStack> insertRow(
    _i1.Session session,
    TechStack row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TechStack>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [TechStack]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<TechStack>> update(
    _i1.Session session,
    List<TechStack> rows, {
    _i1.ColumnSelections<TechStackTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<TechStack>(
      rows,
      columns: columns?.call(TechStack.t),
      transaction: transaction,
    );
  }

  /// Updates a single [TechStack]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<TechStack> updateRow(
    _i1.Session session,
    TechStack row, {
    _i1.ColumnSelections<TechStackTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<TechStack>(
      row,
      columns: columns?.call(TechStack.t),
      transaction: transaction,
    );
  }

  /// Updates a single [TechStack] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<TechStack?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<TechStackUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<TechStack>(
      id,
      columnValues: columnValues(TechStack.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [TechStack]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<TechStack>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<TechStackUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<TechStackTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TechStackTable>? orderBy,
    _i1.OrderByListBuilder<TechStackTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<TechStack>(
      columnValues: columnValues(TechStack.t.updateTable),
      where: where(TechStack.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TechStack.t),
      orderByList: orderByList?.call(TechStack.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [TechStack]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<TechStack>> delete(
    _i1.Session session,
    List<TechStack> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TechStack>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [TechStack].
  Future<TechStack> deleteRow(
    _i1.Session session,
    TechStack row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TechStack>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<TechStack>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TechStackTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TechStack>(
      where: where(TechStack.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TechStackTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TechStack>(
      where: where?.call(TechStack.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
