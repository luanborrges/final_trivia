import 'dart:async';
import '../model/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class AbstractTriviaService {

  Future<List<Question?>?> fetchQuestions();

}

class TriviaService {

  Future<List<Question?>?> fetchQuestions(int amount, String difficulty) async {

    Map<String, String> query = { 'amount': '$amount' , 'difficulty' : difficulty , 'type' : 'multiple'};

    final url = Uri.https('opentdb.com', '/api.php', query );

    final response = await http.Client().get(url);

    if(response.statusCode == 200) {

      List<dynamic> unparsedQuestions = json.decode(response.body.toString())['results'];

      List<Question> questions = unparsedQuestions.map((question) => Question.fromJson(question)).toList();

      // print(questions); // tá dando uns null furioso aqui, mas se olhar, oq ta entrando nas questões lá no modelo (desfazer o print, ta saindo umas string bala

      return [];
    } else {

      return [];
    }
  }
}