// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hotline_cafe/Pages/LogIn/loginPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF040415),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 200),
        child: PageView(
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              isLastPage = value == 2;
            });
          },
          children: [
            screenElement(),
            screenElement(),
            screenElement(),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 200,
        color: const Color(0xFF040415),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const WormEffect(
                    spacing: 16,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.white),
              ),
              const Spacer(),
              !isLastPage
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LogInPage()));
                            },
                            child: const Text(
                              "Skip",
                              style: TextStyle(color: Colors.grey),
                            )),
                        MaterialButton(
                          height: 55,
                          minWidth: 100,
                          onPressed: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          color: const Color(0xffe66944),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Next"),
                            ],
                          ),
                        ),
                      ],
                    )
                  : MaterialButton(
                    height: 55,
                    minWidth: 100,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInPage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    color: const Color(0xffe66944),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Get Started"),
                      ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  screenElement() {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, letterSpacing: -0.3),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cras potenti nibh ut at tristique tempus. Hendrerit amet habitant proin faucibus mattis.",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                letterSpacing: -0.3),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
