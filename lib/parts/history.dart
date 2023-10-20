import 'package:calculator/parts/logic.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black54,
      child: Column(
        children: [
          Text(answers[0]),
        ],
      ),
    );
  }
}
