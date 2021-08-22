import 'package:final_project_mobile2/service/service.dart';
import 'package:final_project_mobile2/model/model.dart';

class QuestionListController {

  List<Question> questions = [];

   _fetchQuestions({int? inputAmount, String? inputDifficulty }) async {
    final triviaService = TriviaService();

    int amount = inputAmount ?? 10;
    String difficulty = inputDifficulty ?? 'medium';

    questions = await triviaService.fetchQuestions(amount, difficulty);
  }
}