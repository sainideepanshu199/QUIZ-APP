// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, duplicate_ignore, prefer_const_constructors_in_immutables, unused_local_variable, unused_import, sort_child_properties_last

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restHandler;

  Result(this.resultScore, this.restHandler);

  String get resultPhrase {
    String resultText = 'you did it';
    if (resultScore <= 15) {
      resultText = 'you are awesome and innocent';
    } else if (resultScore <= 18) {
      resultText = 'pretty likeable';
    } else if (resultScore <= 26) {
      resultText = 'you are strange';
    } else {
      resultText = 'you are bad';
    }
    return resultText;
  }

//getter is created by defing the return type get anyname{}
//getter is a special property
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // ignore: deprecated_member_use
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: restHandler,
          ),
        ],
      ),
    );
  }
}
//ctrl+shift+r is to wrap code with some other options
//ElevatedButton is used in place of RaisedButton, it also picks up sytling on basis of app theme
// ElevatedButton is styled using style: ButtonStyle{
// backgroundColor : MaterialStateProperty.all(Colors.orange),
//or style: ElevatedButton.styleFrom(primary: Colors.orange, onprimary: Colrs.white),
// primary for back-ground and onprimary for text

//TextButton is used in place of FlatButton
//primary targets the primary thing that makes up the widget, like here it targets the text

//OutlineButton is replaced by OutlinedButton
//style: OutlinedButton.styleFrom(side: BorderSide(color:Colors.red)),
