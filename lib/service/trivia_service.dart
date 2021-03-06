import 'dart:async';
import '../model/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class AbstractTriviaService {

  Future<List<Question>> fetchQuestions();

}

class TriviaService {

  Future<List<Question>> fetchQuestions(int amount, String difficulty) async {

    Map<String, String> query = { 'amount': '$amount' , 'difficulty' : difficulty , 'type' : 'multiple' };

    final url = Uri.https('opentdb.com', '/api.php', query );

    final response = await http.Client().get(url);

    if(response.statusCode == 200) {

      List<dynamic> unparsedQuestions = json.decode(response.body.toString())['results'];

      List<Question> questions = unparsedQuestions.map((question) => Question.fromJson(question)).toList();

      return questions;
    } else {

      return [];
    }
  }

  Future<List<Category>> fetchCategory() async {

    final url = Uri.https('opentdb.com', '/api_category.php' );

    final response = await http.Client().get(url);

    if(response.statusCode == 200) {

      List<dynamic> unparsedCategories = json.decode(response.body.toString())['trivia_categories'];

      List<Category> categories = unparsedCategories.map((category) => Category.fromJson(category)).toList();

      return categories;
    } else {

      return [];
    }
  }
}