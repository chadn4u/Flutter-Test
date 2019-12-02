
import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child: Text("Your Score is $totalScore"),);
  }

}