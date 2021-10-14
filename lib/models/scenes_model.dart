import 'package:flutter/material.dart';

class Scene {
  final String name;
  final IconData icon;
  final Color color;

  Scene({required this.name, required this.icon, required this.color});
}

List<Scene> scenes = [
  Scene(name: 'Music', icon: Icons.music_note, color: Colors.red),
  Scene(name: 'Going out', icon: Icons.directions_walk, color: Colors.blue),
  Scene(name: 'Night', icon: Icons.nights_stay, color: Colors.blueAccent),
  Scene(name: 'Movie', icon: Icons.movie_outlined, color: Colors.green),
  Scene(name: 'Sleep', icon: Icons.hotel, color: Colors.orange),
];
