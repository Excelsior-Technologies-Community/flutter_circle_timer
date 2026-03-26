import 'package:flutter/material.dart';

class CircleTimerStyle {
  final double size;
  final double strokeWidth;
  final List<Color>? gradientColors;
  final Color backgroundColor;
  final TextStyle textStyle;
  final bool showAnimation;

  const CircleTimerStyle({
    this.size = 180,
    this.strokeWidth = 12,
    this.gradientColors,
    this.backgroundColor = Colors.grey,
    this.textStyle = const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    this.showAnimation = true,
  });
}