// ignore_for_file: unnecessary_import, implementation_imports, use_key_in_widget_constructors, must_be_immutable, unused_import, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

//we can have a constructor for a class which can take some data to initialize data inside the class
//constructor is made by repeating class name and parameters are added by this.parameter
//questiontext should be passed from outside by making a constructor
class Question extends StatelessWidget {
  String
      questionText; //late or final states dart that this value will never change after its initialization in the constructor

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(
            15), //EdgeInsets here is a special type of constructor with some predefined settings and some different behaviour.
        child: Text(
          questionText,
          style: TextStyle(
            backgroundColor: Color.fromARGB(255, 122, 229, 34),
            fontSize: 25,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
          ),
          textAlign: TextAlign.center,
        )); //questiontext property is referred here
  }
}
