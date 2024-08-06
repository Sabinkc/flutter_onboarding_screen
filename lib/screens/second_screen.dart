import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Lottie.asset("second_animation.json", height: 350),
            Text(
              "Let's start with us",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child: Text(
                "You will be master at dribbling without any doubt.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, letterSpacing: 0.1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
