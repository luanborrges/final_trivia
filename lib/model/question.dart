class Question {

  String? question;
  String? correctAnswer;
  List<dynamic>? wrongAnswers;

  Question({required this.question, required this.correctAnswer, required this.wrongAnswers});

  factory Question.fromJson(Map<String, dynamic> json) {

    return Question(
      question: json['question']!.toString(),
      correctAnswer: json['correct_answer']!.toString() ,
      wrongAnswers: json['incorrect_answers']!,
    );
  }

  @override
  String toString() {
    return 'Question: ${question!}, ${correctAnswer!},  ${wrongAnswers!}';
  }
}