import 'package:flutter/material.dart';
import 'package:lumilife/screens/homes/devices/dimmer.dart';
import 'package:lumilife/screens/homes/devices/lamp.dart';
import 'package:lumilife/screens/homes/devices/nest_wifi.dart';

class DevicesInRoom extends StatelessWidget {
  const DevicesInRoom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          Row(
            children: const [
              NestWifiDevice(),
              SizedBox(width: 8),
              DimmerDevice(),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              LampDevice(
                name: "Lamp 2",
                status: "Unavailable",
                icon: Icons.tungsten,
              ),
              SizedBox(width: 8),
              LampDevice(
                name: "Smart TV",
                status: "Closed",
                icon: Icons.tv_outlined,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              LampDevice(
                name: "Air Conditioner",
                status: "Closed",
                icon: Icons.ac_unit,
              ),
              SizedBox(width: 8),
              LampDevice(
                name: "Lamp 2",
                status: "Closed",
                icon: Icons.tungsten,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
