// ignore_for_file: implementation_imports, unnecessary_import, sort_child_properties_last, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  late final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      // ignore: deprecated_member_use
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.green,
        textColor: Colors.yellow,
        //Colors is a class with static properties which can be used without instantiating the class
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
