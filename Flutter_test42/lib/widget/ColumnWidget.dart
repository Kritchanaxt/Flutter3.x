import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget { 
  const ColumnWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
             "Kritchanat",
             style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
             "Kritchanat",
             style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
             "Kritchanat",
             style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
      ],
    );
  }
}