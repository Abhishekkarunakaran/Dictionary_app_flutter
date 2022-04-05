// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:dictionary/pages/no_connectionpage.dart';
import 'package:dictionary/pages/not_found_page.dart';
import 'package:flutter/material.dart';
// import 'pages/homepage.dart';
import 'pages/resultpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Model _data;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dictionary',
      home: NotFoundPage(),
      // home: NoConnectionPage()
      // home: ResultPage(),
      // home: HomePage()
    );
  }
}
