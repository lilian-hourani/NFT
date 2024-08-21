import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      fixedColor: Colors.grey[400],
      unselectedItemColor: Colors.grey[400],
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.vibration_outlined), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
      ],
    );
  }
}
