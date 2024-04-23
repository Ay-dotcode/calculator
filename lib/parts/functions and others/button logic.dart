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
    onPressed: () async {
      switch (text) {
        case 'C':
          textcontroller.clear();
          anscontroller.clear();
          break;
        case '(':
          textcontroller.text += '(';
          break;
        case ')':
          textcontroller.text += ')';
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
          await onEqualButtonPressed();
          break;
        default:
          textcontroller.text += text;
      }
      if (['+', '-', '÷', 'x']
          .any((char) => textcontroller.text.contains(char))) {
        anscontroller.text = solve();
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
