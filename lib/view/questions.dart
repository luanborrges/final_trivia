import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_project_mobile2/model/model.dart';
import '../controller/utils.dart';

class QuestionView extends StatefulWidget {

  QuestionView({Key? key, required this.title , required this.question}) : super(key: key);

  final String title;

  final Question question;

  @override
  _QuestionViewState createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {

  late Question question;
  late List<Question> questionList;
  late List<String> answers;
  late String answer1;
  late String answer2;
  late String answer3;
  late String answer4;
  MaterialColor result1 = Colors.pink;
  MaterialColor result2 = Colors.pink;
  MaterialColor result3 = Colors.pink;
  MaterialColor result4 = Colors.pink;

  @override
  void initState() {
    super.initState();

    question = widget.question;
    answers = ShuffleQuestion.shuffleAnswers(question);
    answer1 = answers[0].toString();
    answer2 = answers[1].toString();
    answer3 = answers[2].toString();
    answer4 = answers[3].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container (
        color: Colors.cyan,
        child: Column(
          children: [
            Image.network('https://media.discordapp.net/attachments/278958026134913024/878999789193273364/quiz-plugins-for-WordPress.png', alignment: Alignment.center, height: 120,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(70),
              child: Text(question.question.toString(),
                style: TextStyle(fontSize: 28, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text(answer1),
                onPressed: (){
                  setState(() {
                    result1 = checkAnswer(answer1);
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: result1,
                ),
              )
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text(answer2),
                onPressed: (){
                  setState(() {
                    result2 = checkAnswer(answer2);
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: result2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text(answer3),
                onPressed: (){
                  setState(() {
                    result3 = checkAnswer(answer3);
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: result3,
                ),
              )
            ),
            Container(
              margin: EdgeInsets.all(10),
              child:ElevatedButton(
                child: Text(answer4),
                onPressed: (){
                  setState(() {
                    result4 = checkAnswer(answer4);
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: result4,
                ),
              )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
          onPressed: () {
            setState(() {
              if( QuestionListController.questions.isNotEmpty) {
                questionList = QuestionListController.questions;
                question = questionList.elementAt(1);
                answers = ShuffleQuestion.shuffleAnswers(question);
                answer1 = answers[0].toString();
                answer2 = answers[1].toString();
                answer3 = answers[2].toString();
                answer4 = answers[3].toString();
              }
            });
          },
      ),
    );
  }

  MaterialColor checkAnswer(String answer) => answer == question.correctAnswer?  Colors.green : Colors.red ;

}
