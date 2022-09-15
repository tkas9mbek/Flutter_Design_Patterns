import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../utility/triangle_painter.dart';

@immutable
abstract class IStructureBuilder extends Equatable {
  const IStructureBuilder({
    required this.name,
  });

  final String name;

  Widget buildStructure() => Column(
        children: [
          Stack(
            children: [
              _buildRoof(),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: buildWidow(),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              _buildWall(),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: buildDoor(),
                ),
              ),
            ],
          ),
        ],
      );

  Widget _buildWall() => Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
          ),
        ),
        height: 160,
        width: 230,
      );

  Widget _buildRoof() => CustomPaint(
        painter: TrianglePainter(),
        child: const SizedBox(
          height: 140,
          width: 270,
        ),
      );

  Widget buildWidow();

  Widget buildDoor();

  @override
  List<Object?> get props => [name];
}
