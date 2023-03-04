import 'package:flutter/material.dart';

class CustomAvatarBar extends StatelessWidget {
  const CustomAvatarBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30),
      child: Row(
        children: [
          CircleAvatar(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://cdn.dribbble.com/users/6616071/avatars/small/67071a7b0cb0615533d91454319a463c.jpg?1608463095')),
            ),
          ),
          const Expanded(
            child: ListTile(
              title: Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  'Hello, Michael !'),
              subtitle: Text('26 december'),
            ),
          )
        ],
      ),
    );
  }
}
