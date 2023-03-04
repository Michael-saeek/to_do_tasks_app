import 'package:flutter/material.dart';

class CardTask extends StatelessWidget {
  final String task;
  final String data;
  final String level;
  // final String progress;

  const CardTask({
    super.key,
    required this.task,
    required this.data,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(82, 225, 221, 221),
          borderRadius: BorderRadius.circular(10)),
      width: 200,
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                task),
          ),
          const SizedBox(
            height: 10,
          ),
          _CustomTaskIcon(text: data),
          _CustomTaskIcon(text: level),
          Container(
            alignment: Alignment.centerRight,
            color: Colors.green,
            width: double.infinity,
            height: 20,
            child: const Text(
                style: TextStyle(color: Colors.white, fontSize: 12), '80%'),
          )
        ],
      ),
    );
  }
}

class _CustomTaskIcon extends StatelessWidget {
  const _CustomTaskIcon({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 10),
      child: Row(
        children: [
          Icon(size: 20, color: Colors.grey[500], Icons.calendar_month),
          Text(style: TextStyle(color: Colors.grey[500], fontSize: 13), text)
        ],
      ),
    );
  }
}
