import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Image.asset(
          "assets/images/aog-white.png",
          height: 90,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Dólar e Real",
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontFamily: "Big Shoulders Display",
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
