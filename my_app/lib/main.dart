// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, use_key_in_widget_constructors, annotate_overrides, unused_local_variable, deprecated_member_use, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

void
    main() // MAIN FUNCTION AUTOMATTICALLY GETS EXECUTED BY FLUTTER AT START OF THE APP
{
  runApp(MyApp()); //function provided by  material.dart to run app
}

// void main() => runApp(MyApp)); other way for void main,

class MyApp
    extends StatelessWidget // extends states that  the class  MyApp inherites the properties of existing StatelessWidget class
{
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
                Text('the question!'),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: null,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: null,
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: null,
                ),
              ],
            )));
  }
}
