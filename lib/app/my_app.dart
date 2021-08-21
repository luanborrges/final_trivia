import 'package:flutter/material.dart';
import '../view/views.dart';
import 'app_routes.dart';

class MyApp extends StatelessWidget {

  static final MyApp _instance = MyApp._internal();

  MyApp._internal();

  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: getAppRoutes().getRoutes,
      title: 'Cool Trivia',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Trivia Home'),
    );
  }

  AppRoutes getAppRoutes() => AppRoutes();
}

