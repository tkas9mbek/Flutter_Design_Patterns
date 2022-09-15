import 'package:flutter/material.dart';

class StripedRectanglePainter extends CustomPainter {
  StripedRectanglePainter({
    this.strokeColor = Colors.black,
    this.strokeWidth = 2,
    this.paintingStyle = PaintingStyle.stroke,
    this.stripeCount = 10,
  });

  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;
  final int stripeCount;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getPath(size.width, size.height), paint);
  }

  Path getPath(double x, double y) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, y)
      ..lineTo(x, y)
      ..lineTo(x, 0)
      ..lineTo(0, 0);

    final gap = 1 / stripeCount;

    for (var i = gap; i < 1; i += gap) {
      path
        ..moveTo(0, y * i)
        ..lineTo(x, y * i);
    }

    return path;
  }

  @override
  bool shouldRepaint(StripedRectanglePainter oldDelegate) =>
      oldDelegate.strokeColor != strokeColor ||
      oldDelegate.paintingStyle != paintingStyle ||
      oldDelegate.strokeWidth != strokeWidth;
}
