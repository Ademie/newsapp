import 'package:flutter/material.dart';
import 'package:newsapp/controllers/remote_call.dart';
import 'package:newsapp/models/posts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  getNews() async {
    // storing post objects into a list
    posts = await RemoteCall().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
            itemCount: posts?.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${posts![index].id}"),
                title: Text(posts![index].title),
                subtitle: Text(posts![index].body),
              );
            }),
      ),
    );
  }
}
