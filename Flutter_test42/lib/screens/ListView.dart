import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyListView extends StatefulWidget { 
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> { 
  List data = ["wave", "kla", "diw", "got", "wafer"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange
          ),
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
          padding: const EdgeInsets.all(40),
          child: Text(
            data[index],
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        );
      },
    );
  }
}
