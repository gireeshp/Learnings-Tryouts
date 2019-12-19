import 'package:flutter/material.dart';

import './textMsg.dart';

class TextControl extends StatelessWidget {
  final int counter;
  final Function incrementCounter;

  TextControl(this.counter, this.incrementCounter);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextMsg(
        counter,
      ),
      RaisedButton(
        child: Text('Click Me'),
        color: Colors.red,
        textColor: Colors.white,
        onPressed: incrementCounter,
      ),
    ]);
  }
}
