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
  var _totalscore = 0;
//void _restartQuiz is a method here
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }
  //by adding this thr build method of the MyAppState class will be re-trigerred and it will re-build the widget tree and re-eevaluate the condition

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'black', 'score': 2},
        {'text': 'green', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'dog', 'score': 3},
        {'text': 'cat', 'score': 5},
        {'text': 'rabbit', 'score': 8},
        {'text': 'horse', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favourite car brand?',
      'answers': [
        {'text': 'Mercedes', 'score': 2},
        {'text': 'BMW', 'score': 5},
        {'text': 'Audi', 'score': 6},
        {'text': 'Volvo', 'score': 8},
      ],
    },
  ];
  //added map class
  void _answerQuestion(int score) {
    _totalscore = _totalscore + score;
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
    //here BuildContext is a special object-type and context is the object
    //build returns so-called "widget tree"{
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
            : Result(_totalscore, _resetQuiz),
        //_resetQuiz is passed as apointer to resultwidget
      ),
    );
  }
}
//lifted the state up, by callback functions  by pointer to function address
