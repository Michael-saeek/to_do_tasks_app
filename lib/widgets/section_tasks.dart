import 'package:flutter/material.dart';
import 'package:todo_tasks_app/widgets/widgets.dart';

class SectionTasks extends StatelessWidget {
  const SectionTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(title: 'Ongoing Tasks'),
        const SizedBox(
          height: 10,
        ),

        SizedBox(
          width: double.infinity,
          height: 150,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CardTask(
                    task: 'Writting Book',
                    data: '0${index + 1}/03/2023',
                    level: 'Easy'),
              );
            },
          ),
        )
        //CardTask(task: 'Writting Book', data: '03/03/2023', level: 'Easy')

        /*
        ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, int index) {
            return CardTask(
                task: 'Writting Book', data: '$index/03/2023', level: 'Easy');
          },
        )
        */
      ],
    );
  }
}
