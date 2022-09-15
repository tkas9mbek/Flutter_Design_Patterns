import 'package:flutter/material.dart';

class CrossedRectanglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  CrossedRectanglePainter({
    this.strokeColor = Colors.black,
    this.strokeWidth = 3,
    this.paintingStyle = PaintingStyle.stroke,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getPath(size.width, size.height), paint);
  }

  Path getPath(double x, double y) => Path()
    ..moveTo(0, 0)
    ..lineTo(0, y)
    ..lineTo(x, y)
    ..lineTo(x, 0)
    ..lineTo(0, 0)
    ..lineTo(x, y)
    ..moveTo(0, y)
    ..lineTo(x, 0);

  @override
  bool shouldRepaint(CrossedRectanglePainter oldDelegate) =>
      oldDelegate.strokeColor != strokeColor ||
      oldDelegate.paintingStyle != paintingStyle ||
      oldDelegate.strokeWidth != strokeWidth;
}
