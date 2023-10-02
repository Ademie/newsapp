import 'package:flutter/material.dart';
import 'package:newsapp/models/posts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Post>? posts;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
