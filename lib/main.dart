import 'package:flutter/material.dart';
import 'package:mochitweet/pages/inital_screen.dart';
import 'package:mochitweet/pages/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MoiTweets"),
        ),
        body: const MainScreen(
          username: "toni",
        ),
      ),
    );
  }
}
