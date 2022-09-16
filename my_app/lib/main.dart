// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, use_key_in_widget_constructors, annotate_overrides, unused_local_variable, deprecated_member_use, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

void
    main() // MAIN FUNCTION AUTOMATTICALLY GETS EXECUTED BY FLUTTER AT START OF THE APP
{
  runApp(MyApp()); //function provided by  material.dart to run app
}

// void main() => runApp(MyApp)); other way for void main,

class MyApp
    extends StatefulWidget // extends states that  the class  MyApp inherites the properties of existing StatelessWidget class
{
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //here BuildContext is a special object-type and context is the object
    //build returns so-called "widget tree"
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    return MaterialApp(
        // here MaterialApp is class and still we can pass arguments to it bcz of constructor
        home: Scaffold(
            appBar: AppBar(title: Text('HOME')),
            body: Column(
              children: [
                Text(questions[questionIndex]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () =>
                      print('answer 2 chosen'), //anonymous function
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: answerQuestion,
                ),
              ],
            )));
  }
}
