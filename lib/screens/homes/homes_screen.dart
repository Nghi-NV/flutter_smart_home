import 'package:flutter/material.dart';
import 'package:lumilife/screens/homes/bottom_navigation_bar_custom.dart';
import 'package:lumilife/screens/homes/widgets/devices_in_room.dart';
import 'package:lumilife/screens/homes/widgets/header_scenes_view.dart';
import 'package:lumilife/screens/homes/widgets/room_header.dart';
import 'package:lumilife/utils/colors.dart';

class Homes extends StatefulWidget {
  const Homes({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Homes();
}

class _Homes extends State<Homes> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: ColorConstants.backgroundLight,
        bottomNavigationBar: const BottomNavigationBarCustom(),
        body: Column(
          children: [
            const HeaderScenesView(),
            Expanded(
              child: Column(
                children: const [
                  SizedBox(height: 16),
                  RoomHeader(),
                  DevicesInRoom(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
