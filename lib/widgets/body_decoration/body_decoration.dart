import 'package:flutter/material.dart';
import 'package:lumilife/utils/colors.dart';

class BodyDecoration extends StatelessWidget {
  const BodyDecoration({Key? key, required this.child, this.background})
      : super(key: key);

  final Widget child;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      width: double.infinity,
      decoration: background != null
          ? null
          : const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  ColorConstants.backgroundGradient1,
                  ColorConstants.backgroundGradient2,
                ],
              ),
            ),
      child: child,
    );
  }
}
