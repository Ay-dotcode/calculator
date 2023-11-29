import 'package:calculator/parts/UI/buttons.dart';
import 'package:calculator/parts/UI/icon_buttons.dart';
import 'package:calculator/parts/UI/text_area.dart';
import 'package:calculator/parts/functions%20and%20others/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../functions and others/Global variables.dart';
import '../functions and others/history.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> getHistory() async {
    debugPrint("Getting history");
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    answers = await prefs.getStringList('answers') ?? [];
    questions = await prefs.getStringList('questions') ?? [];

    debugPrint("History Gotten");
  }

  @override
  void initState() {
    setState(() {
      HistoryContainer.historyLoaded = false;
    });
    getHistory();

    setState(() {
      HistoryContainer.historyLoaded = true;
    });

    super.initState();
  }

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
