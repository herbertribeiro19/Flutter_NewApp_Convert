import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Image.asset(
          "assets/images/aog-white.png",
          height: 160,
          color: Colors.deepOrange,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          Icons.change_circle_outlined,
          color: Colors.deepOrange,
        ),
        Text(
          "Dólar e Real",
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 26,
            fontFamily: "Big Shoulders Display",
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
