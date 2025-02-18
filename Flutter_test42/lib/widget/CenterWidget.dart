import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget { 
  const CenterWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container (
        color: Colors.orange,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: const Text(
          "Kritchanat",
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 3
          ),
        ),
      ),
    );
  }
}