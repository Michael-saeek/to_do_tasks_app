import 'package:flutter/material.dart';
import 'package:todo_tasks_app/helpers/custom_dialog_task.dart';

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
        items: [
          const BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          const BottomNavigationBarItem(
              label: 'Calendar', icon: Icon(Icons.calendar_month)),
          BottomNavigationBarItem(
            label: 'Add',
            icon: Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: () => CustomShowCreateTask(context),
                child: const Icon(color: Colors.white, Icons.add),
              ),
            ),
          ),
          const BottomNavigationBarItem(
              label: 'User', icon: Icon(Icons.admin_panel_settings)),
          const BottomNavigationBarItem(
              label: 'Settings', icon: Icon(Icons.settings)),
        ]);
  }
}
