class Quiz {
  Quiz({
    required this.category,
    required this.id,
    required this.correctAnswer,
    required this.incorrectAnswers,
    required this.question,
  });
  late final String category;
  late final String id;
  late final String correctAnswer;
  late final List<String> incorrectAnswers;
  late final String question;

  Quiz.fromJson(Map<String, dynamic> json){
    category = json['category'];
    id = json['id'];
    correctAnswer = json['correctAnswer'];
    incorrectAnswers = List.castFrom<dynamic, String>(json['incorrectAnswers']);
    question = json['question'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['category'] = category;
    _data['id'] = id;
    _data['correctAnswer'] = correctAnswer;
    _data['incorrectAnswers'] = incorrectAnswers;
    _data['question'] = question;
    return _data;
  }
}