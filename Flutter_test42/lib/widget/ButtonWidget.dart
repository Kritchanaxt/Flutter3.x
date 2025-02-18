import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget { 
  const ButtonWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.purple
            ),
            onPressed: (){
              print("Button Clicked!");
            },
            child: const Text("Click", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ),
          const SizedBox(height: 10,),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white
            ),
            onPressed: (){
              print("Button Clicked!");
          }, 
          child: const Text("Click", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),) 
          ),
          const SizedBox(height: 10,),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.purple,
              side: BorderSide(
                color: Colors.purple,
                width: 2
              )
            ),
            onPressed: (){
              print("Button Clicked!");
          },  
          child: const Text("Click", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white
            ),
            onPressed: (){
              print("Button Clicked!");
          },  
          child: const Text("Click", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}