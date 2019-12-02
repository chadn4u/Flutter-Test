import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function handler;
  final String answerText;
  Answer(this.handler,this.answerText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(width: double.infinity,
    child: RaisedButton(child: Text(answerText),
      onPressed: handler,
      color: Colors.amberAccent,
      ),
    );
  }

}