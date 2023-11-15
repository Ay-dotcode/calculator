import 'package:calculator/parts/constants.dart';
import 'package:calculator/parts/logic.dart';
import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  const IconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    color: themeColor,
                    height: 450,
                    child: Center(),
                  );
                },
              );
            },
            icon: const Icon(Icons.access_time),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calculate_outlined),
          ),
          const SizedBox(width: 200),
          IconButton(
            onPressed: () {
              if (textcontroller.text.isNotEmpty) {
                textcontroller.text = textcontroller.text
                    .substring(0, textcontroller.text.length - 1);
              }
            },
            icon: const Icon(Icons.backspace_outlined),
            color: const Color.fromARGB(255, 0, 121, 6),
            iconSize: 20,
          ),
        ],
      ),
    );
  }
}
