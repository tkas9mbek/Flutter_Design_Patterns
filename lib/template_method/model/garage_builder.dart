import 'package:flutter/material.dart';

import '../utility/striped_rectangle_painter.dart';
import 'i_structure_builder.dart';

@immutable
class GarageBuilder extends IStructureBuilder {
  const GarageBuilder() : super(name: 'Garage');

  @override
  Widget buildDoor() => CustomPaint(
        painter: StripedRectanglePainter(
          stripeCount: 8,
        ),
        child: const SizedBox(
          width: 150,
          height: 130,
        ),
      );

  @override
  Widget buildWidow() => const SizedBox();
}
