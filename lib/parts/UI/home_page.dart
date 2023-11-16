import 'package:calculator/parts/UI/buttons.dart';
import 'package:calculator/parts/functions%20and%20others/constants.dart';
import 'package:calculator/parts/UI/icon_buttons.dart';
import 'package:calculator/parts/UI/text_area.dart';
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
      body: const Column(
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
