import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 2,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 44,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(22),
              ),
              child: MaterialButton(
                onPressed: () {},
                splashColor: Colors.grey,
                child: Row(
                  children: const [
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Room",
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_up,
                      size: 22,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: const Icon(
          //     Icons.videocam,
          //     size: 20,
          //     color: Colors.black,
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     shape: const CircleBorder(),
          //     padding: const EdgeInsets.all(12),
          //     primary: Colors.grey[300],
          //   ),
          // ),
          const SizedBox(width: 8),
          Container(
            height: 44,
            width: 44,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(22),
            ),
            child: MaterialButton(
              onPressed: () {},
              splashColor: Colors.grey,
              padding: EdgeInsets.zero,
              child: const Icon(
                Icons.videocam,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 44,
            width: 44,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(22),
            ),
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: const Icon(
                Icons.share,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 44,
            width: 44,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(22),
            ),
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: const Icon(
                Icons.home,
                size: 20,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
