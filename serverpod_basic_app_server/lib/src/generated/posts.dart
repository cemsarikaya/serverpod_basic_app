/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Posts extends _i1.TableRow implements _i1.ProtocolSerialization {
  Posts._({
    int? id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  }) : super(id);

  factory Posts({
    int? id,
    required String title,
    required String description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PostsImpl;

  factory Posts.fromJson(Map<String, dynamic> jsonSerialization) {
    return Posts(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = PostsTable();

  static const db = PostsRepository._();

  String title;

  String description;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  Posts copyWith({
    int? id,
    String? title,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static PostsInclude include() {
    return PostsInclude._();
  }

  static PostsIncludeList includeList({
    _i1.WhereExpressionBuilder<PostsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostsTable>? orderByList,
    PostsInclude? include,
  }) {
    return PostsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Posts.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Posts.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostsImpl extends Posts {
  _PostsImpl({
    int? id,
    required String title,
    required String description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          title: title,
          description: description,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Posts copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Posts(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class PostsTable extends _i1.Table {
  PostsTable({super.tableRelation}) : super(tableName: 'posts') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        createdAt,
        updatedAt,
      ];
}

class PostsInclude extends _i1.IncludeObject {
  PostsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Posts.t;
}

class PostsIncludeList extends _i1.IncludeList {
  PostsIncludeList._({
    _i1.WhereExpressionBuilder<PostsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Posts.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Posts.t;
}

class PostsRepository {
  const PostsRepository._();

  Future<List<Posts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Posts>(
      where: where?.call(Posts.t),
      orderBy: orderBy?.call(Posts.t),
      orderByList: orderByList?.call(Posts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Posts?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostsTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Posts>(
      where: where?.call(Posts.t),
      orderBy: orderBy?.call(Posts.t),
      orderByList: orderByList?.call(Posts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Posts?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Posts>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Posts>> insert(
    _i1.Session session,
    List<Posts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Posts>(
      rows,
      transaction: transaction,
    );
  }

  Future<Posts> insertRow(
    _i1.Session session,
    Posts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Posts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Posts>> update(
    _i1.Session session,
    List<Posts> rows, {
    _i1.ColumnSelections<PostsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Posts>(
      rows,
      columns: columns?.call(Posts.t),
      transaction: transaction,
    );
  }

  Future<Posts> updateRow(
    _i1.Session session,
    Posts row, {
    _i1.ColumnSelections<PostsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Posts>(
      row,
      columns: columns?.call(Posts.t),
      transaction: transaction,
    );
  }

  Future<List<Posts>> delete(
    _i1.Session session,
    List<Posts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Posts>(
      rows,
      transaction: transaction,
    );
  }

  Future<Posts> deleteRow(
    _i1.Session session,
    Posts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Posts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Posts>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Posts>(
      where: where(Posts.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Posts>(
      where: where?.call(Posts.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
