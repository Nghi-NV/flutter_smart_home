import 'package:flutter/material.dart';
import 'package:lumilife/screens/homes/widgets/header.dart';
import 'package:lumilife/screens/homes/widgets/scenes.dart';
import 'package:lumilife/screens/homes/widgets/scenes_header.dart';

class HeaderScenesView extends StatelessWidget {
  const HeaderScenesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(23),
          bottomRight: Radius.circular(23),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            color: Colors.black26.withOpacity(0.2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child: Text(
                "Good Morning,\nAhang!",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const ScenesHeader(),
            const Scenes(),
            const SizedBox(height: 6),
            Center(
              child: Container(
                height: 3,
                width: 36,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
