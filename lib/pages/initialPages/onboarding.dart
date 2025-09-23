import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/pages/authentication/signupScreen.dart';
import 'package:todolist/pages/initialPages/startScreen.dart';
import 'package:todolist/themes/textThemes.dart';
import 'package:todolist/widgets/buttons/next_button.dart';
import 'package:todolist/widgets/onbooardingWidgets/onboardingWidgets.dart';

//this is the first page that appears when the app is being logged into for the firs ttime
class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller =
      PageController(); //instance of the page controller class
  //free up the memory
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              PageView(
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                controller: _controller,

                //page view to take the scrollable contents
                children: [
                  OnboardingWidget1(
                    largeText: "Manage Your Tasks",
                    smallText:
                        "You can easily manage all of your daily\n tasks in DoMe  for free",
                    imagePath: Assets.onboardingImages.pageOne.path,
                  ),
                  OnboardingWidget1(
                    largeText: "Create daily routine",
                    smallText:
                        "in Uptodo you can create your\n personalized routine to stay productive",
                    imagePath: Assets.onboardingImages.pageTwo.path,
                  ),
                  OnboardingWidget1(
                    largeText: "Organize your Tasks",
                    smallText:
                        "you can organize your task daily by\n adding your task into seperate categories",
                    imagePath: Assets.onboardingImages.pageThree.path,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text("SKIP", style: AppTextStyles.body),
                  ),
                  const Spacer(),
                  40.height,
                  Center(
                    child: SmoothPageIndicator(
                      count: 3,
                      controller: _controller,

                      effect: const WormEffect(
                        activeDotColor: Colors.white,
                        dotColor: Colors.grey,
                        dotHeight: 4,
                        dotWidth: 20,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _controller.previousPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Text("BACK", style: AppTextStyles.body),
                        ),
                        _currentIndex == 2
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const Startscreen();
                                      },
                                    ),
                                  );
                                },
                                child: NextButton(text: "GET STARTED"),
                              )
                            : GestureDetector(
                                onTap: () {
                                  _controller.nextPage(
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: NextButton(text: "NEXT"),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
