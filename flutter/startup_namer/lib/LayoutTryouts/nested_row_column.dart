import 'package:flutter/material.dart';

class NestedRowColumnTryout {
  Widget nestedTryout() {
    Widget stars = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Icon(Icons.star, color: Colors.green[500])),
        Expanded(child: Icon(Icons.star, color: Colors.green[500])),
        Expanded(child: Icon(Icons.star, color: Colors.green[500])),
        const Expanded(child: Icon(Icons.star, color: Colors.black)),
        const Expanded(child: Icon(Icons.star, color: Colors.black)),
      ],
    );

    Widget ratings = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: stars),
        const Expanded(
          child: Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );

    Widget title = const Text(
      'Strawberry Pavlova',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 30,
      ),
    );

    Widget description = const Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina Annua Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
      ),
    );

    final mainImage = Image.asset(
      'assets/ex3nestedrowcolumns/pavlova.jpg',
      fit: BoxFit.cover,
    );

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          title,
          description,
          ratings,
        ],
      ),
    );

    final together = Container(
      height: 600,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: leftColumn,
              width: 400,
            ),
            mainImage,
          ],
        ),
      ),
    );
    // return leftColumn;

    final contTryout = Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.red),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        image: const DecorationImage(
          image: AssetImage('assets/Avatar_Aang.png'),
        ),
      ),
      width: 200,
      height: 200,
      margin: const EdgeInsets.all(20),
      child: const Center(
        child: Text('Hi'),
      ),
    );
    return contTryout;
  }
}
