import 'package:serverpod/serverpod.dart';
import 'package:serverpod_basic_app_server/src/generated/protocol.dart';

class PostsEndpoint extends Endpoint {
  Future<void> createPosts(Session session, Posts post) async {
    try {
      Posts.db.insertRow(session, post);
    } catch (e) {
      print(e);
    }
  }

  Future<void> deletePosts(Session session, Posts post) async {
    try {
      Posts.db.deleteRow(session, post);
    } catch (e) {
      print(e);
    }
  }

  Future<List<Posts>> getPostsList(Session session) async {
    try {
      return Posts.db.find(session, orderBy: (e) => e.id, orderDescending: true);
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<void> updatePost(Session session, Posts posts) async {
    try {
      await Posts.db.updateRow(session, posts);
    } catch (e) {
      print(e);
    }
  }
}
