// To parse this JSON data, do | final post = postFromJson(jsonString);
import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
    int userId;
    int it;
    String title;
    String body;

    Post({
        required this.userId,
        required this.it,
        required this.title,
        required this.body,
    });

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        userId: json["userId"],
        it: json["it"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "it": it,
        "title": title,
        "body": body,
    };
}
