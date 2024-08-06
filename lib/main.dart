import 'package:flutter/material.dart';
import 'package:onboarding_screen/screens/first_screen.dart';
import 'package:onboarding_screen/screens/main_screen.dart';
import 'package:onboarding_screen/screens/second_screen.dart';
import 'package:onboarding_screen/screens/third_screen.dart';

void main(List<String> args) {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
