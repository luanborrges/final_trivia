import 'package:final_project_mobile2/model/model.dart';

class ShuffleQuestion {
    Question question;
    List<String> shuffledAnswers; // essa parte aqui tu coloca nos tiles

   shuffledAnswer!.add(question.correctAnswer);
   shuffledAnswer.add(question.wrongAnswers);
   shuffledAnswer.sort();

   //agora coloca a shuffledAnswer nas respostas, se a string que for tocada for igual a correctAnswer, fica verde, etc
}