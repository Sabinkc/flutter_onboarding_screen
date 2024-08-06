import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Lottie.asset("first_animation.json", height: 350),
          Text(
            "Welcome to Dribbler",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: Text(
              "Here, we will teach you all the skills of dribbling from basic to pro.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, letterSpacing: 0.1),
            ),
          )
        ],
      ),
    );
  }
}
