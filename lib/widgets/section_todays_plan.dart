import 'package:flutter/material.dart';
import 'package:todo_tasks_app/widgets/widgets.dart';

class SectionTodaysPlan extends StatelessWidget {
  const SectionTodaysPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(title: "Today's plan"),
        SizedBox(
          //  width: double.infinity,
          height: 250,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (_, int index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CustomListsPlan(),
            ),
          ),
        )
      ],
    );
  }
}
