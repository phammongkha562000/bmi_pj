import 'package:flutter/material.dart';

enum TaskCategories {
  education(Icons.school, Colors.blueGrey),
  health(Icons.favorite, Colors.orange),
  home(Icons.home, Colors.green);

  final IconData icon;
  final Color color;
  const TaskCategories(this.icon, this.color);
}
