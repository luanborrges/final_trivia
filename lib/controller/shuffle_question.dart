import 'package:final_project_mobile2/model/model.dart';

class ShuffleQuestion {

    static List<String> shuffleAnswers(Question question) {

      List<String> shuffledAnswers = []; // essa parte aqui tu coloca nos tiles
      String correctAnswer = question.correctAnswer!;
      question.wrongAnswers!.forEach((element) =>  shuffledAnswers.add(element.toString()));

      shuffledAnswers.add(correctAnswer);
      shuffledAnswers.shuffle();

      return shuffledAnswers;
    }
}