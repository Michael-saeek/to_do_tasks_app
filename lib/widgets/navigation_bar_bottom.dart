import 'package:flutter/material.dart';

class NavigationBarBottom extends StatelessWidget {
  const NavigationBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        backgroundColor: const Color.fromARGB(217, 235, 231, 231),
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Calendar', icon: Icon(Icons.calendar_month)),
          BottomNavigationBarItem(label: 'Add', icon: Icon(Icons.add)),
          BottomNavigationBarItem(
              label: 'User', icon: Icon(Icons.admin_panel_settings)),
          BottomNavigationBarItem(
              label: 'Settings', icon: Icon(Icons.settings)),
        ]);
  }
}
