import 'package:flutter/material.dart';

import '../utility/window_painter.dart';
import 'i_structure_builder.dart';

@immutable
class HouseBuilder extends IStructureBuilder {
  const HouseBuilder() : super(name: 'House');

  @override
  Widget buildDoor() => Container(
        height: 120,
        width: 60,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
          ),
        ),
      );

  @override
  Widget buildWidow() => CustomPaint(
    painter: WindowPainter(),
    child: const SizedBox(
      height: 50,
      width: 50,
    ),
  );
}
