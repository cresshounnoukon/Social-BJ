import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/screens/main_screen.dart';
import 'package:flutterwithfirebase/utils/default_values.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../components/dot_indicator.dart';
import '../components/onboarding_component.dart';
import '../components/x_button_component.dart';
import '../models/onboarding.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () async {
                print(currentPage);
                _gotoRegistration();
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
                        (index) =>
                        DotIndicator(
                          isActive: index == currentPage,
                        )).toList(),
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: currentPage == onboardings.length - 1
          ? FloatingActionButton(onPressed: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => RegistrationScreen(),), (
                route) => false);
      }, child: Icon(Icons.start),)
          : null,
    );
  }

  void _gotoRegistration() async {
    await _saveEscapeOnBoarding();
    if (currentPage == onboardings.length - 1) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()),
              (route) => false);
    }
  }

  _saveEscapeOnBoarding() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(ONBORDING, true);
  }
}
