// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(
          backgroundColor: Color.fromARGB(255, 237, 188, 11),
          fontSize: 28,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
