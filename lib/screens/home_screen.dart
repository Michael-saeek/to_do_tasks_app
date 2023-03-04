import 'package:flutter/material.dart';
import 'package:todo_tasks_app/widgets/section_tasks.dart';
import 'package:todo_tasks_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom Navigation Bar
      bottomNavigationBar: const NavigationBarBottom(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // Avatar Widget
            CustomAvatarBar(),

            // Chart
            ChartBar(),
            // Horizontal sliders Cards Tasks
            SectionTasks(),

            // Today's plan  (tasks to do)
            SectionTodaysPlan(),
          ],
        ),
      ),
    );
  }
}
