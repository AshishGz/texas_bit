import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:texas_bit/quizApp/QuizProvider.dart';
import 'package:texas_bit/quizApp/quizQuestion.dart';

class PlayQuizScreen extends StatelessWidget {
  String category;
   PlayQuizScreen({Key? key,required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quizProvider=Provider.of<QuizProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
        body: quizProvider.quizData.length>0?
        QuizQuestion(quiz: quizProvider.quizData[quizProvider.questionIndex],quizProvider: quizProvider,):
    Center(child: CircularProgressIndicator())
    );
  }
}
