import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget { 
  const ImageWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://static-00.iconduck.com/assets.00/flutter-icon-1651x2048-ojswpayr.png",
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 30,),
        Image.asset(
          "assets/images/pic1.png",
          width: 150,
          height: 150,
        ),
        Image.asset(
          "assets/images/pic2.png",
          width: 150,
          height: 150,
        )
      ],
    );
  }
}