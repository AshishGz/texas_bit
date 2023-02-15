import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:texas_bit/quizApp/Quiz.dart';
class QuizProvider with ChangeNotifier{

  List<Quiz> _quizData=[];
  int _point=0;
  int _questionIndex=0;


  int get questionIndex => _questionIndex;

  setQuestionIndex(int value) {
    _questionIndex = value;
  }

  int get point => _point;

  setPoint(int value) {
    _point = value;
  }

  onCorrectAnswer(){
    _point=_point+1;
    _questionIndex=_questionIndex+1;
    notifyListeners();
  }

  List<Quiz> get quizData => _quizData;

  QuizProvider(){
    getQuizData('dsa');
  }


  getQuizData(String category) async {
    try {
      //String path=json.decode('api/questions?limit=20&categories=science');
      var url = Uri.https('the-trivia-api.com','/api/questions');
      print(url.host+'-'+url.path);
      var response = await http.get(url);
      print('Response status: ${response.statusCode}');
      jsonDecode(response.body).forEach((data)=>{
        _quizData.add(Quiz.fromJson(data))
      });
      notifyListeners();
    }catch(e){
      print(e);
    }
  }
}