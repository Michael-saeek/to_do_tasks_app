import 'package:flutter/material.dart';

class CustomAvatarBar extends StatelessWidget {
  const CustomAvatarBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 40),
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
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        'Hello '),
                    Text(
                        style: TextStyle(
                            color: Color.fromARGB(255, 164, 58, 183),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        'Michael ! ')
                  ],
                ),
                const Text('28 December ')
              ],
            )),
          ),
        ],
      ),
    );
  }
}
