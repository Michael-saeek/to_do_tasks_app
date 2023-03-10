import 'package:flutter/material.dart';

void customShowCreateTask(BuildContext context) {
  final DateTime time = DateTime.now();

  showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      builder: (_) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  'Create Task'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          'Task title'),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Learn Cinema 4D'),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            'Select Level'),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            _BottomLevelTaskWidget(
                                level: 'Easy', icon: Icons.bar_chart_outlined),
                            _BottomLevelTaskWidget(
                                level: 'Medium', icon: Icons.bar_chart),
                            _BottomLevelTaskWidget(
                                level: 'Hard', icon: Icons.bar_chart_rounded),
                          ],
                        )
                      ]),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            'Date and Time'),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.purple),
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.calendar_month),
                              suffixIconColor:
                                  const Color.fromARGB(132, 118, 37, 133),
                              border: const OutlineInputBorder(),
                              labelText: time.toString()),
                        )
                      ]),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.purple)),
                  child: const Text('Done'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      });
}

class _BottomLevelTaskWidget extends StatefulWidget {
  final String level;
  final IconData icon;

  const _BottomLevelTaskWidget({
    super.key,
    required this.level,
    required this.icon,
  });

  @override
  State<_BottomLevelTaskWidget> createState() => _BottomLevelTaskWidgetState();
}

class _BottomLevelTaskWidgetState extends State<_BottomLevelTaskWidget> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 238, 237, 237),
            borderRadius: BorderRadius.circular(10)),
        height: 90,
        width: 105,
        child: TextButton(
            onPressed: () {
              if (isSelect) {
                setState(() {
                  isSelect = false;
                });
              } else {
                setState(() {
                  isSelect = true;
                });
              }
            },
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                      color: isSelect == true
                          ? Colors.purple
                          : const Color.fromARGB(255, 136, 135, 135),
                      widget.icon),
                  Text(
                      style: TextStyle(
                          color:
                              isSelect == true ? Colors.purple : Colors.black),
                      widget.level),
                ],
              ),
            )));
  }
}
