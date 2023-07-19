import 'package:flutter/material.dart';

import '../models/onboarding.dart';

class OnBoardingComponent extends StatelessWidget {
  final Onboarding onboarding;

  OnBoardingComponent({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          image: DecorationImage(
              image: AssetImage(
                onboarding.image!,
              ),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.low)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
            decoration: const BoxDecoration(
                //color: Theme.of(context).primaryColor.withOpacity(.8),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
               /* gradient: LinearGradient(
                  colors: [Colors.transparent, Color(0xff00766b)],
                  stops: [0, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )*/
            ),
            child: Text(
              onboarding.title!,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
