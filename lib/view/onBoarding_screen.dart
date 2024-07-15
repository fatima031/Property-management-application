import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/widgets/onboardingCard3.dart';
import 'package:propertymanagmentapp/widgets/onboarding_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/onBoardingCard2.dart';

class Onboarding_screen extends StatefulWidget {
  const Onboarding_screen({super.key});

  @override
  State<Onboarding_screen> createState() => _Onboarding_screenState();
}

class _Onboarding_screenState extends State<Onboarding_screen> {
  static final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _onBoardingPage = [OnboardingCard(), OnBoardingCard2(), OnBoardingCard3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: _onBoardingPage,
            ),
          ),
          SmoothPageIndicator(controller: _pageController, count: 3)
        ],
      ),
    );
  }
}
