import 'package:flutter/material.dart';

import '../components/dot_indicator.dart';
import '../components/onboarding_component.dart';
import '../models/onboarding.dart';
import '../services/shared_preferences.dart';
import '../style/default_values.dart';
import 'auth/registration_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<Onboarding> onboardings = [
    Onboarding(
      title: "Social BJ 🇧🇯\nLet's Connect Beninese Together For More Fun",
      image: "assets/images/onboarding/2.png",
    ),
    Onboarding(
        title: 'Social BJ 🇧🇯\nMake Friend for better',
        image: "assets/images/onboarding/9.png",
        iconData: Icons.computer),
    Onboarding(
        title: 'Social BJ 🇧🇯\nEnjoy Your Like Every Time, Every Where',
        image: "assets/images/onboarding/11-r.png",
        iconData: Icons.science_outlined),
    Onboarding(
        title: 'Enjoy Your Like Every Time, Every Where',
        image: "assets/images/onboarding/10.png",
        iconData: Icons.military_tech),
  ];
  PageController controller = PageController();
  int currentPage = 0;

  @override
  void initState() {

    super.initState();
  }
  @override
  void didChangeDependencies() {

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                _setOnboardingDoneAndGotoRegistration();
              },
              child: Text(
                "Ignorer".toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Stack(alignment: Alignment.bottomLeft, children: [
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
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: XPadding),
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
      floatingActionButton: currentPage == onboardings.length - 1
          ? FloatingActionButton(
              onPressed: () {
                _setOnboardingDoneAndGotoRegistration();
              },
              child: Icon(Icons.navigate_next),
            )
          : null,
    );
  }

  void _gotoRegistration() async {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => RegistrationScreen()),
        (route) => false);
  }

  void _setOnboardingDoneAndGotoRegistration() async {
    await XPreference.saveEscapeOnBoarding();
    _gotoRegistration();
  }

  decideActionOnInit() async {
  bool? value= await  XPreference.isYetEscapeOnBoarding();
      if (value!) {
        _gotoRegistration();
      }

  }
}
