import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todolist/components/containerButton,.dart';
import 'package:todolist/pages/login_screen.dart';
import 'package:todolist/welcome_screens/into2.dart';
import 'package:todolist/welcome_screens/intro1.dart';
import 'package:todolist/welcome_screens/intro3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  //logic to select when to move to the next page
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              controller: _controller,
              children: [const Intro1(), const Intro2(), const Intro3()],
            ),
            Positioned(
              top: screenSize.height * 0.5,
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SlideEffect(
                    dotHeight: 5,
                    dotWidth: 25,
                    radius: 20,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _controller.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: Text("BACK")),
                    //now lets perform some logic here
                    onLastPage
                        ? GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginScreen();
                              }));
                            },
                            child: Nextbutton(text: 'GET STARTED'),
                          )
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: Nextbutton(text: "Next"))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                child: Text(
                  "SKIP ",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
