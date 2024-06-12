/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'posts.dart' as _i2;
import 'package:serverpod_basic_app_client/src/protocol/posts.dart' as _i3;
export 'posts.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Posts) {
      return _i2.Posts.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Posts?>()) {
      return (data != null ? _i2.Posts.fromJson(data) : null) as T;
    }
    if (t == List<_i3.Posts>) {
      return (data as List).map((e) => deserialize<_i3.Posts>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Posts) {
      return 'Posts';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Posts') {
      return deserialize<_i2.Posts>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
