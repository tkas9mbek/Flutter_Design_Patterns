import 'package:flutter/material.dart';

class WindowPainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  WindowPainter({
    this.strokeColor = Colors.black,
    this.strokeWidth = 2,
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
    ..moveTo(0, y / 2)
    ..lineTo(x, y / 2)
    ..moveTo(x / 2, 0)
    ..lineTo(x / 2, y);

  @override
  bool shouldRepaint(WindowPainter oldDelegate) =>
      oldDelegate.strokeColor != strokeColor ||
      oldDelegate.paintingStyle != paintingStyle ||
      oldDelegate.strokeWidth != strokeWidth;
}
