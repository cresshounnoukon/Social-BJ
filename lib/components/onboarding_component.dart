import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/utils/default_values.dart';

import '../models/onboarding.dart';

class OnBoardingComponent extends StatelessWidget {
  final Onboarding onboarding;

  OnBoardingComponent({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                onboarding.image,
              ),
              fit: BoxFit.cover,
              //   alignment: Alignment.topCenter,
              filterQuality: FilterQuality.low)),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          gradient: Theme.of(context).brightness == Brightness.light
              ? XLineaGradient
              : XLineaGradientDark,
        ),
        padding:
            EdgeInsets.symmetric(vertical: XPadding * 6, horizontal: XPadding),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 30,
                child: Icon(
                  onboarding.iconData ?? Icons.music_note_outlined,
                  color: Colors.white,
                ),
              ),
              Text(
                onboarding.title!,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: XColorWhite, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
