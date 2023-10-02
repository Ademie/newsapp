import 'package:newsapp/models/posts.dart';
import 'package:http/http.dart' as http;

class RemoteCall {
  Future<List<Post>?> getPosts() async {
    // http client object
    var client = http.Client();
    // create a Uri object from the string
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      // Consume the data fetched i.e storing posts objects into a list
      return postFromJson(json);
    } else {}
    return null;
  }
}
