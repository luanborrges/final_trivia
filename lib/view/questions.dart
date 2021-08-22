import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_project_mobile2/model/model.dart';
import '../controller/utils.dart';


class QuestionView extends StatefulWidget {

  const QuestionView({Key? key, required String title}) : super(key: key);

  @override
  _QuestionViewState createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {

  late Question question;
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

    question = Question( question: "aaaaa", correctAnswer: 'X', wrongAnswers: ['a', 'b', 'c']);
    answers = ShuffleQuestion.shuffleAnswers(question);
    answer1 = answers[0].toString();
    answer2 = answers[1].toString();
    answer3 = answers[2].toString();
    answer4 = answers[3].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Column(
        children: [
          Image.network('https://media.discordapp.net/attachments/278958026134913024/878999789193273364/quiz-plugins-for-WordPress.png', alignment: Alignment.center, height: 120,),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(70),
            child: Text(question.question.toString(),
              style: TextStyle(fontSize: 28, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: answerButton(answer1, result1),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: answerButton(answer2, result2),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: answerButton(answer3, result3),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: answerButton(answer4, result4),
          ),
        ],
      ),
    );
  }

  MaterialColor checkAnswer(String answer) => answer == question.correctAnswer?  Colors.green : Colors.red ;

  ElevatedButton answerButton(String answer, MaterialColor result) {
     return ElevatedButton(
        child: Text(answer),
        onPressed: (){
          setState(() {
            result = checkAnswer(answer);
          });
        },
        style: ElevatedButton.styleFrom(
          primary: result,
        ),
     );
  }
}
