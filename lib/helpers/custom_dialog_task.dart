import 'package:flutter/material.dart';

void CustomShowCreateTask(BuildContext context) {
  final DateTime time = DateTime.now();

  showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.start,
          content: SizedBox(
            height: 500,
            child: Column(
              children: [
                const Text(
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    'Create Task'),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          'Task title'),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Learn Cinema 4d'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(children: [
                    const Text(
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        'Select Level'),
                    Row(
                      children: const [
                        _BottomLevelTaskWidget(),
                        _BottomLevelTaskWidget(),
                        _BottomLevelTaskWidget(),
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  child: Column(children: [
                    const Text(
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        'Date and Time'),
                    TextField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: time.toString()),
                    )
                  ]),
                ),
                ElevatedButton(onPressed: () {}, child: Text('Done'))
              ],
            ),
          ),
        );
      });
}

class _BottomLevelTaskWidget extends StatelessWidget {
  const _BottomLevelTaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.purple[50], borderRadius: BorderRadius.circular(10)),
        height: 100,
        width: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.upcoming),
            SizedBox(
              height: 5,
            ),
            Text('Easy'),
          ],
        ),
      ),
    );
  }
}
