import 'package:calculator/parts/functions%20and%20others/constants.dart';
import 'package:calculator/parts/functions%20and%20others/button%20logic.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      color: themeColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('C', Colors.red),
              button('(', specialColor, 30),
              button(')', specialColor, 30),
              button('÷', specialColor, 45),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('7'),
              button('8'),
              button('9'),
              button('x', specialColor, 40),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('4'),
              button('5'),
              button('6'),
              button('-', specialColor, 50),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('1'),
              button('2'),
              button('3'),
              button('+', specialColor, 45),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('+/-', buttonForeground, 30),
              button('0'),
              button('.'),
              button('=', buttonForeground, 50, specialColor),
            ],
          ),
        ],
      ),
    );
  }
}
