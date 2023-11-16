import 'package:calculator/parts/functions%20and%20others/Global%20variables.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

String solve() {
  String question = textcontroller.text;
  question = question.replaceAll('x', '*');
  question = question.replaceAll('÷', '/');

  try {
    // Parse and evaluate the expression
    Parser p = Parser();
    Expression exp = p.parse(question);
    ContextModel cm = ContextModel();
    String eval = exp.evaluate(EvaluationType.REAL, cm).toStringAsFixed(10);

    // Remove trailing zeros and unnecessary decimal point
    eval = eval.replaceAll(RegExp(r"0*$"), "").replaceAll(RegExp(r"\.$"), "");

    return eval;
  } catch (e) {
    // Handle parsing or evaluation errors
    debugPrint("Error: $e");
    return "";
  }
}
