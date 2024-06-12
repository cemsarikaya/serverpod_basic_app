/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:serverpod_basic_app_client/src/protocol/posts.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointPosts extends _i1.EndpointRef {
  EndpointPosts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'posts';

  _i2.Future<void> createPosts(_i3.Posts post) =>
      caller.callServerEndpoint<void>(
        'posts',
        'createPosts',
        {'post': post},
      );

  _i2.Future<void> deletePosts(_i3.Posts post) =>
      caller.callServerEndpoint<void>(
        'posts',
        'deletePosts',
        {'post': post},
      );

  _i2.Future<List<_i3.Posts>> getPostsList() =>
      caller.callServerEndpoint<List<_i3.Posts>>(
        'posts',
        'getPostsList',
        {},
      );

  _i2.Future<void> updatePost(_i3.Posts posts) =>
      caller.callServerEndpoint<void>(
        'posts',
        'updatePost',
        {'posts': posts},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    posts = EndpointPosts(this);
  }

  late final EndpointPosts posts;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {'posts': posts};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
