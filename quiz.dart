import 'package:flutter/material.dart';
import './Question.dart';
import './answer.dart'; 

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> ques;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.answerQuestion,
    @required this.ques,
    @required this.questionIndex
    }
    );
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question(ques[questionIndex]['questionText'])  ,
            //here we are passing the function address to our answer.dart file which is 
            // also known as a callback bcoz the receiving widget calls it the future.
            // the ... operator is called spread operator and this adds each element of the 
            // newly created list to the existing list rather than the whole list.
            ...(ques[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
              return Answer(() => answerQuestion(answer['score']) ,answer['Text']);
            }).toList()
          ],
        ); 
  }
}