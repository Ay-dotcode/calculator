import 'package:calculator/parts/functions%20and%20others/Global%20variables.dart';
import 'package:calculator/parts/functions%20and%20others/constants.dart';
import 'package:calculator/parts/functions%20and%20others/solve.dart';
import 'package:flutter/material.dart';

Widget button(
  String text, [
  Color tcolor = buttonForeground,
  double size = buttonSize,
  Color bcolor = buttonBackground,
]) {
  return TextButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: bcolor,
      fixedSize: const Size.fromRadius(38),
      shape: const CircleBorder(),
    ),
    onPressed: () {
      switch (text) {
        case 'C':
          textcontroller.clear();
          anscontroller.clear();
          break;
        case '(':
          textcontroller.text += '(';
          break;
        case ')':
          textcontroller.text += '(';
          break;
        case '÷':
          if (textcontroller.text.endsWith('÷'))
            debugPrint('double division');
          else if (textcontroller.text.isEmpty)
            textcontroller.text += '1';
          else
            textcontroller.text += '÷';

          break;
        case '+/-':
          textcontroller.text += '(-';
          break;
        case '=':
          questions.add(textcontroller.text);
          String eval = solve();

          answers.add(eval);
          textcontroller.clear();
          anscontroller.text = eval;

          break;
        default:
          textcontroller.text += text;
      }
    },
    child: Text(
      text,
      style: TextStyle(
        color: tcolor,
        fontSize: size,
      ),
    ),
  );
}
