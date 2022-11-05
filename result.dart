
import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  @override
  
 final int resultScore;
 final Function resetHandler;
  Result(this.resultScore,this.resetHandler);

  //This is a getter 
  String get resultPhrase{
    var resultText = "You Did It!";
    if(resultScore <= 30){
      resultText="You are awesome and innocent!";
    }
    else if(resultScore <= 50) {
      resultText = "Pretty likeable!";
    }
    else if(resultScore <= 80){
      resultText = "You are ... strange!";
    }
    else{
      resultText= "You are so bad!";
    }
    return resultText;
  }



  Widget build(BuildContext context){
    return Center(
          child: Column(
            children: [
              Text(resultPhrase,
              style: TextStyle(fontSize: 36,
              fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              ),
              OutlinedButton(onPressed: resetHandler, 
              child: Text("Restart Quiz",
              style:  TextStyle(fontSize: 36, 
               fontWeight: FontWeight.bold,
               ),
               ),
               )
            ],
          ),

        );
  }
}