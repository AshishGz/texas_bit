

import 'package:flutter/material.dart';
import 'package:texas_bit/quizApp/categoryCard.dart';
import 'package:texas_bit/quizApp/playQuizScreen.dart';

class QuizHome extends StatelessWidget {
  const QuizHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lets Play!!'),),
        body: ListView(
          children: [
            ...['Arts','Food','Sports','GK','Science','History','Music']
                .map((e) =>
                InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>
                              PlayQuizScreen(category: e)));
                    },
                    child: CategoryCard(title: e))
            )
          ],
        ));
  }
}
