import 'package:flutter/material.dart';

import '../utility/crossed_rectangle_painter.dart';
import 'i_structure_builder.dart';

@immutable
class BarnBuilder extends IStructureBuilder {
  const BarnBuilder() : super(name: 'Barn');

  @override
  Widget buildDoor() => CustomPaint(
        painter: CrossedRectanglePainter(),
        child: const SizedBox(
          width: 140,
          height: 120,
        ),
      );

  @override
  Widget buildWidow() => Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
          ),
        ),
      );
}
