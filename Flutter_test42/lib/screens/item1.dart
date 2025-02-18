import 'package:flutter/material.dart';

class Item1 extends StatefulWidget {
  const Item1({super.key});

  @override
  State<Item1> createState() => _ItemState1();
}

class _ItemState1 extends State<Item1> {
  int quantity = 0;

  void addQuantity() {
    setState(() {
      quantity += 1;
    });
  }

  void subtractQuantity() {
    setState(() {
      quantity = quantity <= 0? 0 : quantity - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$quantity", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
          OutlinedButton(
            onPressed: addQuantity, 
            child: const Text("+", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ),
          const SizedBox(height: 20,),
          OutlinedButton(
            onPressed: subtractQuantity, 
            child: const Text("-", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ),
        ],
      ),
    );
  }
}