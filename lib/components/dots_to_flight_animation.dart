import 'package:flutter/material.dart';

class DotsToFlightAnimation extends StatefulWidget {
  const DotsToFlightAnimation({super.key});

  @override
  State<DotsToFlightAnimation> createState() => _DotsToFlightAnimationState();
}

class _DotsToFlightAnimationState extends State<DotsToFlightAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  static const int dotCount = 5;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _visibleDots(double value) {
    final progress = (value / 0.6).clamp(0.0, 1.0);
    return (progress * dotCount).floor();
  }

  double _planeOffset(double value) {
    final progress = ((value - 0.6) / 0.4).clamp(0.0, 1.0);
    return progress * 40; // 移動距離(px)
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final value = _controller.value;
        final dots = _visibleDots(value);
        final planeX = _planeOffset(value);

        return SizedBox(
          height: 32,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ドット 1〜5
              for (int i = 0; i < dotCount; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Opacity(
                    opacity: i < dots ? 1 : 0,
                    child: const _Dot(),
                  ),
                ),

              if (value >= 0.6)
                Transform.translate(
                  offset: Offset(planeX, 0),
                  child: const Icon(
                    Icons.flight_takeoff,
                    size: 20,
                    color: Colors.white70,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white70,
      ),
    );
  }
}
