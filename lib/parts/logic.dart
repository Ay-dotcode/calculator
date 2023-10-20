import 'package:calculator/parts/constants.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

TextEditingController textcontroller = TextEditingController();
TextEditingController anscontroller = TextEditingController();
List answers = [];

Widget button(
  String text, [
  Color tcolor = buttonForeground,
  double size = 35,
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
        case '()':
          textcontroller.text += '(';
          break;
        case '÷':
          if (textcontroller.text.isEmpty) {
            textcontroller.text += '1';
          } else {
            textcontroller.text += '÷';
          }
          break;
        case '+/-':
          textcontroller.text += '(-';
          break;
        case '=':
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

String solve() {
  String question = textcontroller.text;
  question = question.replaceAll('x', '*');
  question = question.replaceAll('÷', '/');

  Parser p = Parser();
  Expression exp = p.parse(question);
  ContextModel cm = ContextModel();
  String eval = exp.evaluate(EvaluationType.REAL, cm).toStringAsFixed(10);
  return eval;
}
