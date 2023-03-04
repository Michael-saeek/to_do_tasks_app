import 'package:flutter/material.dart';
import 'package:todo_tasks_app/widgets/widgets.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(title: 'Your Productivity'),
        Container(
          color: Colors.grey[200],
          width: double.infinity,
          height: 200,
        )

        // chart
      ],
    );
  }
}
