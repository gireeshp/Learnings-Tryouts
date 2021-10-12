import 'package:flutter/material.dart';

class SizingTryout {
  Widget imagesInRowForSizingTest(CrossAxisAlignment alignment) {
    return Row(
      crossAxisAlignment: alignment,
      children: [
        Expanded(
          child: Image.asset('assets/ex2sizing/pic1.jpg'),
        ),
        Expanded(
          child: Image.asset('assets/ex2sizing/pic2.jpg'),
          flex: 2,
        ),
        Expanded(
          child: Image.asset('assets/ex2sizing/pic3.jpg'),
        ),
      ],
    );
  }

  Widget rowMainAxisMinTryout() {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );
  }
}
