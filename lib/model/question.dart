import '';

class Question {

  String? question;
  String? correctAnswer;
  List<String>? wrongAnswers;

  Question({required question, required correctAnswer, required wrongAnswers});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      question: json['question'],
      correctAnswer: json['correct_answer'] ,
      wrongAnswers: json['incorrect_answers'],
    );
  }

  @override
  String toString() {
    return 'Question: $question, $correctAnswer $wrongAnswers}';
  }
}