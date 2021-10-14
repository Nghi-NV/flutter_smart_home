import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lumilife/utils/colors.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin {
  late AnimationController _animation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkResponse(
            onTap: () {},
            child: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 2),
                    color: Colors.black26,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: const Icon(
                Icons.expand_more,
                size: 28,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            height: 36,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(2, 2), color: Colors.black26, blurRadius: 4),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const Icon(
                    Icons.light_mode,
                    color: Colors.orange,
                    size: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "Oct, 25th",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Stack(
            children: [
              AnimatedBuilder(
                animation: _animation,
                child: const Icon(
                  Icons.album,
                  color: Colors.black,
                  size: 40,
                ),
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _animation.value * 2 * math.pi,
                    child: Transform.scale(
                      scale: lerpDouble(0.9, 1.1, _animation.value)!,
                      child: child,
                    ),
                  );
                },
              ),
              Positioned(
                top: 3,
                right: 3,
                child: Container(
                  width: 11,
                  height: 11,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: ColorConstants.primary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
