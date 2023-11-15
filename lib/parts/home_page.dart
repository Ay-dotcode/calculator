import 'package:calculator/parts/buttons.dart';
import 'package:calculator/parts/constants.dart';
import 'package:calculator/parts/icon_buttons.dart';
import 'package:calculator/parts/text_area.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
        backgroundColor: themeColor,
      ),
      body: Column(
        children: [
          Expanded(child: TextArea()),
          IconButtons(),
          Divider(color: Colors.white30, height: 0),
          Buttons(),
        ],
      ),
    );
  }
}
