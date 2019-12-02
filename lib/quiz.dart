
import 'package:flutter/material.dart';
import 'package:flutter_udemy/question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{
  final List<Map<String,Object>> lstQuestion;
  final Function quizHandler;
  final int indexQuestion;

  Quiz({@required this.indexQuestion,@required this.lstQuestion,@required this.quizHandler});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
         Question(lstQuestion[indexQuestion]['questionText'],
          ),
          ...(lstQuestion[indexQuestion]['answerText'] as List<Map<String,Object>>).map((answer){
            return Answer(() => quizHandler(answer['score']), answer['text']);
          }).toList()
      ],
    );
  }


}