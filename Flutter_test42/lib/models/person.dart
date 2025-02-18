import 'package:flutter/material.dart';

enum Job {
  doctor(title:"Doctor", image: "assets/images/pic2.png", color: Colors.green),
  teacher(title:"Teacher", image: "assets/images/pic6.png", color: Colors.purple),
  nurse(title:"Nurse", image: "assets/images/pic3.png", color: Colors.pink),
  police(title:"Police", image: "assets/images/pic4.png", color: Colors.blue),
  chef(title: "ChefE3", image: "assets/images/pic1.png", color: Colors.brown);

  const Job({required this.title, required this.image, required this.color});
  final String title;
  final String image;
  final Color color;
}

class Person {
  Person({required this.name,required this.age,required this.job});
  String name;
  int age;
  Job job;
} 

List<Person> data = [
  Person(name: "Wave", age: 30, job: Job.doctor),
  Person(name: "JoStar", age: 35, job: Job.teacher),
  Person(name: "Jane", age: 28, job: Job.nurse),
  Person(name: "Sophia", age: 40, job: Job.police),
  Person(name: "Got", age: 23, job: Job.chef),
];