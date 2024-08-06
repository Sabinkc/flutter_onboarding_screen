import 'package:flutter/material.dart';
import 'package:onboarding_screen/screens/first_screen.dart';
import 'package:onboarding_screen/screens/home_page.dart';
import 'package:onboarding_screen/screens/second_screen.dart';
import 'package:onboarding_screen/screens/third_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = (index == 2);
              });
            },
            children: [FirstScreen(), SecondScreen(), ThirdScreen()],
          ),
          Container(
              alignment: Alignment(0, 0.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text("Skip")),
                  SmoothPageIndicator(
                      effect: SlideEffect(activeDotColor: Colors.red),
                      controller: _controller,
                      count: 3),
                  isLastPage
                      ? ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text("Done"))
                      : ElevatedButton(
                          onPressed: () {
                            _controller.nextPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.linear);
                          },
                          child: Text("Next"))
                ],
              ))
        ],
      ),
    );
  }
}
