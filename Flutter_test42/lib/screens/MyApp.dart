import 'package:flutter/material.dart';

//* Screens
import 'package:flutter_test42/screens/item2.dart';
// import 'package:flutter_test42/screens/ListView.dart';
// import 'package:flutter_test42/screens/item.dart';

//* Widget
// import 'package:flutter_test42/widget/ButtonWidget.dart';
// import 'package:flutter_test42/widget/ImageWidget.dart';
// import 'package:flutter_test42/widget/RowWidget.dart';
// import 'package:flutter_test42/widget/ColumnWidget.dart';
// import 'package:flutter_test42/widget/CenterWidget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: "My Title",
       home: Scaffold(
         appBar: AppBar(
           title: const Text("My Application"),
           backgroundColor: Colors.blueGrey,
           foregroundColor: Colors.white,
           centerTitle: true,
         ),
         body: const Item2(),
         
            //* Screens
            // const MyListView(),
            // const Item1(),

            //* Widget
            // const ButtonWidget(),
            // const ImageWidget(),
            // const RowWidget(),
            // const ColumnWidget(),
            // const CenterWidget(),
      ),
    );
  }
}
