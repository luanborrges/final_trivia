import 'package:flutter/material.dart';
import 'questions.dart';
import 'package:final_project_mobile2/model/model.dart';
import 'package:final_project_mobile2/controller/utils.dart';

class StartQuiz extends StatefulWidget{

  StartQuiz({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _StartQuizState createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {

  late List<Question> questions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              Question firstQuestion = await getQuestion();
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>  QuestionView(title: 'Question 1', question: firstQuestion)));
            },
            child: Text('Staaart'))
      ],
    ),
  );}

  getQuestion() async {
    questions = await QuestionListController().fetchQuestions();
    return questions.first;
  }
}