import 'package:flutter/material.dart';

class TextMsg extends StatelessWidget {
  final int counter;

  TextMsg(this.counter);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        'Current value: $counter',
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
