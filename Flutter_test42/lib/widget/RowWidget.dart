import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget { 
  const RowWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
             "wave",
             style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
             "wave",
             style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
             "wave",
             style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
      ],
    );
  }
}