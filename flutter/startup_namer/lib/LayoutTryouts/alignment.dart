import 'package:flutter/material.dart';

class AlignmentTryout {
  Widget rowSpaceTryout() {
    return putTheGivenWidgetsInAColumn([
      simpleRowWithImages(MainAxisAlignment.center),
      simpleRowWithImages(MainAxisAlignment.start),
      simpleRowWithImages(MainAxisAlignment.end),
      simpleRowWithImages(MainAxisAlignment.spaceEvenly),
      simpleRowWithImages(MainAxisAlignment.spaceAround),
      simpleRowWithImages(MainAxisAlignment.spaceBetween),
    ], MainAxisAlignment.spaceEvenly);
  }

  Widget putTheGivenWidgetsInAColumn(
      List<Widget> children, MainAxisAlignment alignment) {
    return Column(
      mainAxisAlignment: alignment,
      children: children,
    );
  }

  Widget simpleRowWithImages(MainAxisAlignment alignment) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        Image.asset('assets/ex1alignment/pic1.jpg'),
        Image.asset('assets/ex1alignment/pic2.jpg'),
        Image.asset('assets/ex1alignment/pic3.jpg'),
      ],
    );
  }

  Widget simpleCenterTryout() {
    return Center(
      child: whatDoYouWantToLayout('Hello World'),
    );
  }

  Widget whatDoYouWantToLayout(String type) {
    if (type == 'image') {
      return Image.asset(
        'assets/Avatar_Aang.png',
        fit: BoxFit.cover,
      );
    } else if (type == 'icon') {
      return const Icon(
        Icons.star,
        textDirection: TextDirection.ltr,
      );
    } else {
      return Text(
        type,
        textDirection: TextDirection.ltr,
        style: const TextStyle(
          fontSize: 32,
          color: Colors.black,
        ),
      );
    }
  }
}
