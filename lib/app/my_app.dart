import 'package:flutter/material.dart';
import 'package:final_project_mobile2/view/views.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cool Trivia',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Trivia Home'),
    );
  }
}

