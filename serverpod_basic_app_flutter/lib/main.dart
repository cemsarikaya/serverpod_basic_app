import 'package:serverpod_basic_app_client/serverpod_basic_app_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Initialize the client with the server URL and connectivity monitor
var client = Client('http://localhost:8080/')..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomView(),
    );
  }
}

class CustomView extends StatefulWidget {
  const CustomView({super.key});

  @override
  State<CustomView> createState() => _CustomViewState();
}

class _CustomViewState extends State<CustomView> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  List<Posts> postsList = [];
  Posts? editPost;

  // Fetch the list of posts from the server
  Future<void> getPostList() async {
    postsList = await client.posts.getPostsList();
  }


  Future<void> _handleSaveButton() async {
    if (editPost != null) {
      editPost!.title = titleController.text;
      editPost!.description = descriptionController.text;
      editPost!.updatedAt = DateTime.now();
      await client.posts.updatePost(editPost!);
      editPost = null;
    } else {
      var post = Posts(
        title: titleController.text,
        description: descriptionController.text,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
      await client.posts.createPosts(post);
    }
    titleController.clear();
    descriptionController.clear();
    setState(() {});
  }

  // Handle delete button press
  Future<void> _handleDeleteButton(int index) async {
    await client.posts.deletePosts(postsList[index]);
    setState(() {});
  }

  // Handle edit button press
  void _handleEditButton(int index) {
    editPost = postsList[index];
    titleController.text = postsList[index].title;
    descriptionController.text = postsList[index].description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serverpod Basic App'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(hintText: "Title"),
              ),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(hintText: "Description"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: _handleSaveButton,
                  child: const Text("Save"),
                ),
              ),
              Expanded(
                child: FutureBuilder(
                  future: getPostList(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState != ConnectionState.done) {
                      return const CircularProgressIndicator();
                    }

                    return ListView.builder(
                      itemCount: postsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(postsList[index].title),
                          subtitle: Text(postsList[index].description),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () => _handleDeleteButton(index),
                          ),
                          leading: IconButton(
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                            onPressed: () => _handleEditButton(index),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
