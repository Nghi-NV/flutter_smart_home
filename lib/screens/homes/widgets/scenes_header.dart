import 'package:flutter/material.dart';

class ScenesHeader extends StatelessWidget {
  const ScenesHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Scenes",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
