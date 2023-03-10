import 'package:flutter/material.dart';

class CustomListsPlan extends StatefulWidget {
  const CustomListsPlan({super.key});

  @override
  State<CustomListsPlan> createState() => _CustomListsPlanState();
}

class _CustomListsPlanState extends State<CustomListsPlan> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.purple[50], borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      //padding: const EdgeInsets.all(5),

      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.purple[400],
                  value: isSelect,
                  onChanged: (bool? value) {
                    if (isSelect == true) {
                      setState(() {
                        isSelect = value!;
                      });
                    } else {
                      setState(() {
                        isSelect = value!;
                      });
                    }
                  }),
              const Text('Chequeo medico')
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Text('Easy'),
                Icon(color: Colors.purple[400], Icons.bar_chart_sharp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
