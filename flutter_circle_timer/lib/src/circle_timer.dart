import 'package:flutter/material.dart';
import 'circle_timer_controller.dart';
import 'circle_timer_style.dart';
import 'circle_timer_painter.dart';
import 'circle_timer_utils.dart';

class CircleTimer extends StatefulWidget {
  final int duration;
  final CircleTimerController controller;
  final CircleTimerStyle style;
  final bool reverse;
  final Widget? child;

  const CircleTimer({
    super.key,
    required this.duration,
    required this.controller,
    this.style = const CircleTimerStyle(),
    this.reverse = false,
    this.child,
  });

  @override
  State<CircleTimer> createState() => _CircleTimerState();
}

class _CircleTimerState extends State<CircleTimer>
    with SingleTickerProviderStateMixin {
  int current = 0;
  double scale = 1;

  @override
  void initState() {
    super.initState();

    widget.controller.onTick = (val) {
      setState(() {
        current = val;
        scale = 1.2;
      });

      Future.delayed(const Duration(milliseconds: 150), () {
        if (mounted) {
          setState(() => scale = 1);
        }
      });
    };

    widget.controller.start(widget.duration);
  }

  @override
  Widget build(BuildContext context) {
    double progress = widget.controller.countUp
        ? current / widget.duration
        : current / widget.duration;

    if (widget.reverse) {
      progress = 1 - progress;
    }

    return SizedBox(
      height: widget.style.size,
      width: widget.style.size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size(widget.style.size, widget.style.size),
            painter: CircleTimerPainter(
              progress: progress,
              gradient: widget.style.gradientColors,
              bgColor: widget.style.backgroundColor,
              stroke: widget.style.strokeWidth,
            ),
          ),
          AnimatedScale(
            duration: const Duration(milliseconds: 200),
            scale: widget.style.showAnimation ? scale : 1,
            child: widget.child ??
                Text(
                  formatTime(current),
                  style: widget.style.textStyle,
                ),
          )
        ],
      ),
    );
  }
}