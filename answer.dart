//this will hold the answer widget of our app


import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  //variable for triggering the function whose address is returned by the main.dart file 
  final Function selectHandler;
  final String answerText;
  
  //constructor for instantiating the property of the class
  Answer(this.selectHandler, this.answerText);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:ElevatedButton(
          style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.amber),
          backgroundColor: MaterialStateProperty.all(Colors.blue),
    ),
    //here we are calling the answerQuestion function but not immediately rather giving an address to the function 
              onPressed: selectHandler ,
              child: Text(answerText),
            ),

    );
  }
}