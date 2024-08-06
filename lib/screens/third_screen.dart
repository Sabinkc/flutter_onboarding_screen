import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Lottie.asset("third_animation.json", height: 350),
            Text(
              "Continue your journey",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child: Text(
                "So, are you ready to be the master at dribbling? If yes, lets go!",
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
