import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;

  const TextTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: Text(
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          title),
    );
  }
}
