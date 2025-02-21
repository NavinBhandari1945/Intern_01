import 'package:api_practice/codex/Home_scrn.dart';
import 'package:api_practice/get_request/Users_section.dart';
import 'package:api_practice/post_api/sign_up.dart';
import 'package:api_practice/post_api/upload_image.dart';
import 'package:flutter/material.dart';

import 'get_request/posts_section.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      //1
      //codex different tutorial and diffferent mentor
      // const Home_scrn(),
      //2
      // the tech brothers tutorial
      //2.1 get http posts
      Homepage(),
    );
  }
}


