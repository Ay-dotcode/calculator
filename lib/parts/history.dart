import 'package:calculator/parts/constants.dart';
import 'package:calculator/parts/logic.dart';
import 'package:flutter/material.dart';

Container history() {
  // Create a ScrollController
  ScrollController _scrollController = ScrollController();

  WidgetsBinding.instance.addPostFrameCallback((_) {
    // Set an initial scroll offset to make it scroll down by default
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  });

  return Container(
    color: themeColor,
    height: 450,
    child: Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: _scrollController, // Assign the controller
            itemCount: answers.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: themeColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 0,
                  ),
                  child: ListTile(
                    // Answer
                    title: Text(
                      answers[index],
                      style: const TextStyle(fontSize: 30),
                    ),
                    // Question
                    subtitle: Text(
                      questions[index],
                      style: const TextStyle(fontSize: 15),
                    ),
                    onTap: () {
                      anscontroller.clear();
                      textcontroller.text = answers[index];
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
