import 'package:flutter/material.dart';
import 'package:my_flutter_practise/screens/topics_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is app title",
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent
      ),
      home: TopicsRoute(),
    );
  }
}



