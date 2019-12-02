
import 'package:flutter/material.dart';
import 'package:flutter_udemy/answer.dart';
import 'package:flutter_udemy/result.dart';
import './question.dart';
import './quiz.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var questions = [{
    'questionText':'What\'s your ball color?',
    'answerText':[{'text':'Blue','score':1},
                  {'text':'Red','score':2},
                  {'text':'Pink','score':3}]
  },{
    'questionText':'Where\'s your Clothes?',
    'answerText':[{'text':'In Used','score':1},
                  {'text':'Laundry','score':2},
                  {'text':'in Cabinet','score':3},
                  {'text':'Forgot','score':4}
                ]
  }];

  void _answerQuestion(int score){
    _totalScore += score;
    setState(() {
      // if(_questionIndex + 1 > questions.length-1)
      //  _questionIndex = 0;
      //  else
       _questionIndex++;
    });
     print(_questionIndex);
  }

  @override
  Widget build(BuildContext context){
      return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text('tai kucing'),
          ),
        body: _questionIndex < questions.length ? Quiz(indexQuestion: _questionIndex,
         lstQuestion: questions, 
         quizHandler: _answerQuestion)
        :Result(_totalScore),
        ),
      );
  }
}