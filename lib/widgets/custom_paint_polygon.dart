import 'package:flutter/material.dart';

class CustomPaintWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // final line = Path();
    // line.relativeLineTo(dx, dy)
    // line.moveTo(x, y)                                    // lineni boshlanish koordinatasi
    // line.close()                                         // boshlanish va oxirni tutashtirish
    // line.addArc(oval, startAngle, sweepAngle)
    // line.addOval(oval)
    // line.addPath(path, offset)
    // line.addPolygon(points, close)
    // line.addRect(rect)
    // line.addRRect(rrect)
    // line.arcTo(rect, startAngle, sweepAngle, forceMoveTo)
    // line.arcToPoint(arcEnd)
    // line.computeMetrics()
    // line.conicTo(x1, y1, x2, y2, w)
    // line.contains(point)
    // line.cubicTo(x1, y1, x2, y2, x3, y3)
    // line.transform(matrix4)
    // line.shift(offset)
    // line.reset()
    // line.relativeQuadraticBezierTo(x1, y1, x2, y2)
    // line.relativeMoveTo(dx, dy)
    // line.relativeCubicTo(x1, y1, x2, y2, x3, y3)
    // line.relativeConicTo(x1, y1, x2, y2, w)
    // line.relativeArcToPoint(arcEndDelta)
    // line.getBounds()
    // line.extendWithPath(path, offset)

    final paint1 = Paint()
        ..strokeWidth = 3
        ..color = Colors.deepPurple
        ..style = PaintingStyle.fill;

    final paint2 = Paint()
      ..strokeWidth = 3
      ..color = Colors.deepPurple
      ..style = PaintingStyle.stroke;

    final triangle = Path();
    triangle.moveTo(150, 0);
    triangle.relativeLineTo(100, 100);
    triangle.relativeLineTo(-150, 0);
    triangle.close();

    final square1 = Path();
    square1.moveTo(30, 150);          /// joylashish o'rni
    square1.relativeLineTo(100, 0); /// 1-nuqta joylashish o'rnidan boshlab x va y o'qi bo'yicha siljish koordinatalari
    square1.relativeLineTo(0, 100);   /// 1-dan 2-nuqtaga x va y bo'yicha siljish
    square1.relativeLineTo(-100, 0);  /// ......
    square1.close();                  /// bosh va oxirgi nuqtalarni tutashtirish

    final trapezium = Path();
    square1.moveTo(190, 150);
    square1.relativeLineTo(50, 0);
    square1.relativeLineTo(60, 80);
    square1.relativeLineTo(-160, 0);
    square1.close();

    const square3 = Rect.fromLTRB(200, 300, 100, 400);

    final hexagon = Path();
    hexagon.moveTo(200, 450);
    hexagon.relativeLineTo(75, 50);
    hexagon.relativeLineTo(0, 75);
    hexagon.relativeLineTo(-75, 50);
    hexagon.relativeLineTo(-75, -50);
    hexagon.relativeLineTo(0, -75);
    hexagon.close();

    final cross = Path();
    cross.moveTo(280, 300);
    cross.relativeLineTo(50, 0);
    cross.relativeLineTo(0, 50);
    cross.relativeLineTo(50, 0);
    cross.relativeLineTo(0, 50);
    cross.relativeLineTo(-50, 0);
    cross.relativeLineTo(0, 50);
    cross.relativeLineTo(-50, 0);
    cross.relativeLineTo(0, -50);
    cross.relativeLineTo(-50, 0);
    cross.relativeLineTo(0, -50);
    cross.relativeLineTo(50, 0);
    cross.close();

    canvas.drawPath(triangle, paint1);
    canvas.drawPath(square1, paint1);
    canvas.drawPath(trapezium, paint1);
    canvas.drawRect(square3, paint2);
    canvas.drawPath(hexagon, paint1);
    canvas.drawPath(cross, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}