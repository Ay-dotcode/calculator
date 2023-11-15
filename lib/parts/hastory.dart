import 'package:calculator/parts/constants.dart';
import 'package:calculator/parts/logic.dart';
import 'package:flutter/material.dart';

Container history() {
  return Container(
    color: themeColor,
    height: 450,
    child: Column(
      children: [
        Expanded(
          child: ListView.builder(
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
                      style: TextStyle(fontSize: 30),
                    ),
                    // Question
                    subtitle: Text(
                      questions[index],
                      style: TextStyle(fontSize: 15),
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
