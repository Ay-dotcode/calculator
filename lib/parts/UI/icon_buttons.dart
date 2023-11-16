import 'package:calculator/parts/functions%20and%20others/Global%20variables.dart';
import 'package:calculator/parts/functions%20and%20others/constants.dart';
import 'package:calculator/parts/functions%20and%20others/history.dart';
import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  const IconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          // History Button
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) => history(),
              );
            },
            icon: const Icon(Icons.access_time),
          ),
          //! To do
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calculate_outlined),
          ),
          const SizedBox(width: 200),
          // Backspace Button
          IconButton(
            onPressed: () {
              if (textcontroller.text.isNotEmpty) {
                textcontroller.text = textcontroller.text
                    .substring(0, textcontroller.text.length - 1);
              }
            },
            icon: const Icon(Icons.backspace_outlined),
            color: backspaceColor,
            iconSize: 20,
          ),
        ],
      ),
    );
  }
}
