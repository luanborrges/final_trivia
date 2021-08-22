import 'package:final_project_mobile2/model/category.dart';
import 'package:final_project_mobile2/model/model.dart';

import '../app/app_routes.dart';
import '../service/service.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Question exemple = Question(question: 'jiosfjsoif', correctAnswer: 'aa', wrongAnswers: ['b','c', 'd']);

  String teste = 'FetchTest';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:
            Column (
              children: [
                TextButton(
                  child: Text('About Us'),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.APP_ROUTE_ABOUT_US);
                  },
                ),TextButton(
                  child: Text('test'),
                  onPressed: () {
                    _fetchQuestions();
                  },
                ),
              ]
            )

      ),
    );
  }

  _fetchQuestions ({int? inputAmount, String? inputDifficulty }) {
    final triviaService = TriviaService();

    int amount = inputAmount ?? 10;
    String difficulty = inputDifficulty ?? 'medium';

    triviaService.fetchQuestions(amount, difficulty);
  }
}
