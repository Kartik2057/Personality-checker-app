// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// void main(){
//    runApp(MyApp());
// }

  import 'package:flutter/material.dart';
  import './quiz.dart';
  import './result.dart';
  // import './answer.dart';
//only valid for one line expression

  void main() => runApp(MyApp());

  class MyApp extends StatefulWidget {
      @override 
  State<StatefulWidget> createState() {
    
    return _MyAppState();
    //Here we are not sending address of the class _MyAppState to the calling 
    //function rather making a direct call to the class
  }
  }
  
  //applying underscore infront of class name or variable name makes its private
  class _MyAppState extends State<MyApp> {
    var _questionIndex=0;
    var _totalScore=0;

    void _resetQuiz() {
      setState(() {
      _questionIndex=0;
      _totalScore=0;
      });
    }
    //This is a shorthand way of creating a map.Although it is a class in flutter.
    //This will also never change the values of list ques at runtime.
    final _ques = const [
       {'questionText':'What\'s your favourite color?',
       'answers': [
      {'Text':'Black','score':10},{'Text':'Red','score':20},{'Text':'Green','score':30},{'Text':'White','score':40}
      ],
      },
      {'questionText':'What\'s your favourite animal?',
      'answers': [
      {'Text':'Rabbit','score':10},{'Text':'Snake','score':20},{'Text':'Elephant','score':30},{'Text':'Lion','score':40}
      ],
      },
      {'questionText':'What\'s your favourite instructor?',
      'answers': [
      {'Text':'Max','score':10},
      {'Text':'Max','score':20},
      {'Text':'Max','score':30},
      {'Text':'Max','score':40}
      ],
      },
    ];
    //1. If we want to make our list constant then we must use const at the place of var 
    //2. For making the list not editable but open for overwriting then we use const as stated. 
    // var dummy =  const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = ['Max'];
    // print(dummy) ; [Hello,Max]

    //ques = [] This does not work if ques is a const. 
  void _answerQuestions(int score){
    // var aBool =true;

    _totalScore = _totalScore + score;

    
    setState(() {
    _questionIndex=_questionIndex+1;
    });
    print(_questionIndex);
    if(_questionIndex < _ques.length){
        print('We have more questions!');
    }
   }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: gtgText("My First App"),
        ),
        //This is a ternary operator
        body: _questionIndex < _ques.length?
        //true expression
        Quiz(
        answerQuestion:_answerQuestions,
        ques: _ques,questionIndex:_questionIndex
        )
        :Result(_totalScore,_resetQuiz),//false expression
      ),
    );
  }
}
