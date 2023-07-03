import 'package:flutter/material.dart';

class CustomPaintWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
        ..strokeWidth = 3
        ..color = Colors.deepPurple
        ..style = PaintingStyle.stroke;

    final triangle = Path();
    triangle.moveTo(150, 0);
    triangle.relativeLineTo(100, 100);
    triangle.relativeLineTo(-150, 0);
    triangle.close();

    final square1 = Path();
    square1.moveTo(50, 150);
    square1.relativeLineTo(100, 0);
    square1.relativeLineTo(0, 100);
    square1.relativeLineTo(-100, 0);
    square1.close();


    final square2 = Path();
    square1.moveTo(250, 150);
    square1.relativeLineTo(100, 0);
    square1.relativeLineTo(0, 100);
    square1.relativeLineTo(-100, 0);
    square1.close();

    canvas.drawPath(triangle, paint);
    canvas.drawPath(square1, paint);
    canvas.drawPath(square2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}