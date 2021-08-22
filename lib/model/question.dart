import '';

class Question {

  String? question;
  String? correctAnswer;
  List<dynamic>? wrongAnswers;

  Question({required String question, required String correctAnswer, required List<dynamic> wrongAnswers});

  factory Question.fromJson(Map<String, dynamic> json) {
    // print(json['question'].toString());
    // print(json['correct_answer'].toString());
    // print(json['incorrect_answers'].toString());
    return Question(
      question: json['question'].toString(),
      correctAnswer: json['correct_answer'].toString() ,
      wrongAnswers: json['incorrect_answers'],
    );
  }

  @override
  String toString() {
    return 'Question: ${question!}, ${correctAnswer!},  ${wrongAnswers!}';
  }
}