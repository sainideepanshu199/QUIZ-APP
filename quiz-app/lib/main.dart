// ignore_for_file: unused_import, use_key_in_widget_constructors, no_logic_in_create_state, unused_field, prefer_final_fields, use_function_type_syntax_for_parameters, annotate_overrides, prefer_const_constructors, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'questions.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

void main() {
  runApp(MyApp());
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  // void setState(() {
  //   _questionIndex =0;
  // });

  final _questions = const [
    {
      'questionText': 'What\'s 69 times 69?',
      'answers': [
        {'text': '4561', 'score': 1},
        {'text': '4761', 'score': 0},
        {'text': '4591', 'score': 0},
        {'text': '4761', 'score': 0},
      ],
    },
    {
      'questionText': 'which brand makes world\'s most powerful cars?',
      'answers': [
        {'text': 'porsche', 'score': 0},
        {'text': 'pagaini', 'score': 1},
        {'text': 'bugatti', 'score': 0},
        {'text': 'ferrari', 'score': 0},
      ],
    },
    {
      'questionText':
          'which was the first company to have a trillion dollar valuation?',
      'answers': [
        {'text': 'Google', 'score': 0},
        {'text': 'Tesla', 'score': 0},
        {'text': 'Microsoft', 'score': 0},
        {'text': 'Apple', 'score': 1},
      ],
    },
  ];
  @override
  Widget build(BuildContext) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('HOME')),
    ));
  }
}
