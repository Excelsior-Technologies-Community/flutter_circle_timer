import 'package:flutter/material.dart';
import 'dart:math';

class CircleTimerPainter extends CustomPainter {
  final double progress;
  final List<Color>? gradient;
  final Color bgColor;
  final double stroke;

  CircleTimerPainter({
    required this.progress,
    required this.gradient,
    required this.bgColor,
    required this.stroke,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Offset c = Offset(size.width / 2, size.height / 2);
    double r = size.width / 2;

    Paint bg = Paint()
      ..color = bgColor
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(c, r, bg);

    Paint progressPaint = Paint()
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    if (gradient != null) {
      progressPaint.shader = SweepGradient(
        colors: gradient!,
        startAngle: 0,
        endAngle: 2 * pi,
      ).createShader(Rect.fromCircle(center: c, radius: r));
    }

    canvas.drawArc(
      Rect.fromCircle(center: c, radius: r),
      -pi / 2,
      2 * pi * progress,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}