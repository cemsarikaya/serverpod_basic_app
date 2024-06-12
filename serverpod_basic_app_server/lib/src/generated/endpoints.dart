/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/posts_endpoint.dart' as _i2;
import 'package:serverpod_basic_app_server/src/generated/posts.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'posts': _i2.PostsEndpoint()
        ..initialize(
          server,
          'posts',
          null,
        )
    };
    connectors['posts'] = _i1.EndpointConnector(
      name: 'posts',
      endpoint: endpoints['posts']!,
      methodConnectors: {
        'createPosts': _i1.MethodConnector(
          name: 'createPosts',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i3.Posts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i2.PostsEndpoint).createPosts(
            session,
            params['post'],
          ),
        ),
        'deletePosts': _i1.MethodConnector(
          name: 'deletePosts',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i3.Posts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i2.PostsEndpoint).deletePosts(
            session,
            params['post'],
          ),
        ),
        'getPostsList': _i1.MethodConnector(
          name: 'getPostsList',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i2.PostsEndpoint).getPostsList(session),
        ),
        'updatePost': _i1.MethodConnector(
          name: 'updatePost',
          params: {
            'posts': _i1.ParameterDescription(
              name: 'posts',
              type: _i1.getType<_i3.Posts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i2.PostsEndpoint).updatePost(
            session,
            params['posts'],
          ),
        ),
      },
    );
  }
}
