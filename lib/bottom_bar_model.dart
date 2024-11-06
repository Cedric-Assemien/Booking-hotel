// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class bottomBarModel {
  String name;
  IconData icon;
  Widget destination;
  BottomNavigationBarItem get item => BottomNavigationBarItem(
        icon: Icon(icon),
            label: name,
      );

  bottomBarModel(
      {required this.name, required this.icon, required this.destination});
}
