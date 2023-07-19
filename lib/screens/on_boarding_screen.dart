import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/bj_button_component.dart';
import 'package:flutterwithfirebase/components/onboarding_component.dart';
import 'package:flutterwithfirebase/models/onboarding.dart';
import 'package:flutterwithfirebase/screens/registration_screen.dart';
import '../components/dot_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<Onboarding> onboardings = [
    Onboarding(
        title: 'Welcome to the Fun BJMessenger ',
        image: "assets/images/onboarding/3.jpg"),
    Onboarding(
        title: 'Best Social App to Make Friend',
        image: "assets/images/onboarding/1.jpg"),
    Onboarding(
        title: 'Enjoy Your Like Every Time, Every Where',
        image: "assets/images/onboarding/3.jpg"),
    Onboarding(
        title: 'Enjoy Your Like Every Time, Every Where',
        image: "assets/images/onboarding/4.jpg"),
  ];
  PageController controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Ignorer".toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Column(
        children: [

          Expanded(
            child: Stack(alignment: Alignment.bottomLeft, children: [
              PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() => currentPage = index);
                },
                children: onboardings
                    .map((e) => OnBoardingComponent(onboarding: e))
                    .toList(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 20, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(
                          onboardings.length,
                          (index) => DotIndicator(
                                isActive: index == currentPage,
                              )).toList(),
                    ),
                  ],
                ),
              ),
            ]),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: BjButtonComponent(
              title: 'Next',
              onTap: () {
                if (currentPage == onboardings.length - 1) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationScreen()),
                      (route) => false);
                } else {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                }
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 4,
                  decoration: BoxDecoration(color:Theme.of(context).primaryColor),
                ),
              ),
              Expanded(
                child: Container(
                  height: 4,
                  decoration: const BoxDecoration(color: Colors.black),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
