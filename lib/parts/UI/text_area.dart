import 'package:calculator/parts/functions%20and%20others/Global%20variables.dart';
import 'package:calculator/parts/functions%20and%20others/constants.dart';
import 'package:flutter/material.dart';

class TextArea extends StatefulWidget {
  const TextArea({super.key});

  @override
  State<TextArea> createState() => _TextState();
}

class _TextState extends State<TextArea> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeColor,
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: Column(
        children: [
          // Question field
          TextField(
            controller: textcontroller,
            enabled: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
            textAlign: TextAlign.end,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          // Answer field
          TextField(
            controller: anscontroller,
            enabled: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
            textAlign: TextAlign.end,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
