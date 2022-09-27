// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
//imported answer and question widget bacause we refer question list and answer question function in this widget

 class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  // ignore: prefer_const_constructors_in_immutables
    Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
    });
  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Question(
                    questions[questionIndex]['questionText'] as String,
                  ),
                  ...(questions[questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                  //... is spread operator . it takes a list  and pull its all values out and add it it surrounding list as individual values.
                ],
              );
  }
}