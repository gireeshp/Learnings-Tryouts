import 'package:flutter/material.dart';
import 'package:startup_namer/LayoutTryouts/alignment.dart';
import 'package:startup_namer/LayoutTryouts/nested_row_column.dart';
import 'package:startup_namer/LayoutTryouts/sizing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final AlignmentTryout alignmentTryout = AlignmentTryout();
  final SizingTryout sizingTryout = SizingTryout();
  final NestedRowColumnTryout nestedRowColumnTryout = NestedRowColumnTryout();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout demo'),
        ),
        // body: alignmentTryout.simpleCenterTryout(),
        // body: alignmentTryout.rowSpaceTryout(),
        // body: sizingTryout.imagesInRowForSizingTest(CrossAxisAlignment.end),
        // body: sizingTryout.rowMainAxisMinTryout(),
        body: nestedRowColumnTryout.nestedTryout(),
      ),
    );
  }
}
