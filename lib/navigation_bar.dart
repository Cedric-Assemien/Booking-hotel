// ignore_for_file: camel_case_types

import 'package:booking_hotel/booking.dart';
import 'package:booking_hotel/bottom_bar_model.dart';
import 'package:booking_hotel/explore.dart';
import 'package:booking_hotel/home_page.dart';
import 'package:booking_hotel/setting.dart';
import 'package:flutter/material.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({super.key});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

Color mainColor = Color.fromARGB(255, 7, 0, 139);

class _navigationBarState extends State<navigationBar> {
  int _selectedIndex = 0;
  final List<bottomBarModel> bottomBarList = [
    bottomBarModel(name: 'Home', icon: Icons.home, destination: HomePage()),
    bottomBarModel(name: 'Explore', icon: Icons.map, destination: Explore()),
    bottomBarModel(
        name: 'Booking', icon: Icons.bookmark, destination: Booking()),
    bottomBarModel(name: 'Profile', icon: Icons.person, destination: Setting()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: mainColor,
          unselectedItemColor: Colors.grey,
          items: bottomBarList.map((item) => item.item).toList(),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      body: bottomBarList[_selectedIndex].destination,
    );
  }
}
