// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, use_key_in_widget_constructors, annotate_overrides, unused_local_variable, deprecated_member_use, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_typing_uninitialized_variables, must_be_immutable, unused_import, unused_element, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:my_app/result.dart';
import 'answer.dart'; // answer widget file is imported here
import 'quiz.dart'; // added to manage the result of quiz widget in main dart file
import 'result.dart';

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
    return _MyAppState();
  }
}
//BY ADDING _ IN FRONT OF MyAppState, this becomes private, means this class can only be used inside the main.dart file

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['blue', 'red', 'black', 'green'],
    },
    //here BuildContext is a special object-type and context is the object
    //build returns so-called "widget tree"
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['dog', 'cat', 'rabbit', 'horse'],
    },
    {
      'questionText': 'What\'s your favourite car brand?',
      'answers': ['Mercedes', 'BMW', 'Audi', 'Volvo'],
    },
  ];
  //added map class
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // here MaterialApp is class and still we can pass arguments to it bcz of constructor
      home: Scaffold(
        appBar: AppBar(title: Text('HOME')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
//lifted the state up, by callback functions  by pointer to function address
