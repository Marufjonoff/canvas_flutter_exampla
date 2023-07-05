import 'dart:math';

import 'package:flutter/material.dart';

class CustomPaintCircles extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) async {
    final paintCircle = Paint()
        ..color = Colors.deepOrange
        ..style = PaintingStyle.fill;

    final paintOval = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    final paintCircles = Paint()
      ..color = Color.fromRGBO(Random().nextInt(200), Random().nextInt(200), Random().nextInt(200), 1.0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    /// circle
    double circleRadius = 75.0;
    const circleCenter = Offset(200, 150);
    canvas.drawCircle(circleCenter, circleRadius, paintCircle);

    /// oval
    const ovalCenter = Offset(200, 275);
    final oval = Rect.fromCenter(center: ovalCenter, width: 250, height: 100);
    canvas.drawOval(oval, paintOval);

    double circlesRadius = 130.0;
    const circlesCenter = Offset(200, 455);
    while(circlesRadius > 0) {
      canvas.drawCircle(circlesCenter, circlesRadius, paintCircles);
      circlesRadius -= 10.0;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}