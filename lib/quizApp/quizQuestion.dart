import 'package:flutter/material.dart';
import 'package:texas_bit/quizApp/Quiz.dart';
import 'package:texas_bit/quizApp/QuizProvider.dart';

class QuizQuestion extends StatefulWidget {
  Quiz quiz;
  QuizProvider quizProvider;
   QuizQuestion({Key? key,required this.quiz,required this.quizProvider}) : super(key: key);

  @override
  State<QuizQuestion> createState() => _QuizQuestionState();
}

class _QuizQuestionState extends State<QuizQuestion> {
  List<String> _answers=[];
  String _userAnser='';

  @override
  initState(){
    onCreateAnswer();
  }
  onCreateAnswer(){
    _answers=[];
  _answers.add(widget.quiz.correctAnswer);
  widget.quiz.incorrectAnswers.forEach((item)=>{
  _answers.add(item)
  });
  _answers.shuffle();
  setState(() {

  });
}
  @override
  Widget build(BuildContext context) {
    if(!_answers.contains(widget.quiz.correctAnswer)){
      onCreateAnswer();
    }
    return ListView(
      padding: EdgeInsets.all(6 ),
      children: [
        Container(
          padding: EdgeInsets.all(10),
            color: Colors.green.shade100,
            child: Center(
              child: Text('Points :::: ${widget.quizProvider.point.toString()}',style: TextStyle(
                color: Colors.green.shade900,
                fontSize: 22,
                fontWeight: FontWeight.w900
              ),),
            )),
        SizedBox(height: 12,),
        Text(widget.quiz.question,style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900
        ),),
        Container(
          height: MediaQuery.of(context).size.height*0.8,
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,

            // Generate 100 widgets that display their index in the List.
            children: List.generate(_answers.length, (index) {
              return InkWell(
                onTap: (){
                  _userAnser=_answers[index];
                  if(widget.quiz.correctAnswer==_answers[index]){
                   widget.quizProvider.onCorrectAnswer();
                  }else{
                    const snackBar = SnackBar(
                      content: Text('Shit! You selected wrong Answer!!!'),
                    );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  }
                  setState(() {

                  });
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.blue.shade100,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(_answers[index],style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          color: Colors.blue.shade900
                      ),),
                    )),
              );
            }),
          ),
        ),



      ],
    );
  }
}
