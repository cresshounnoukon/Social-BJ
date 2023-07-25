import 'package:flutter/material.dart';

import '../utils/default_values.dart';

class ProfileCirleComponent extends StatelessWidget {
  const ProfileCirleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: XPadding*8,
          width:  XPadding*8,
          padding:   EdgeInsets.all( XPadding*0.4),
          margin:   EdgeInsets.only(right: XPadding*.8),
          decoration: BoxDecoration(

              border: Border.all(
                  width: 1.5,
                  color: Theme.of(context).primaryColor),
              shape: BoxShape.circle),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/onboarding/4.png"),
                  filterQuality: FilterQuality.low,
                  fit: BoxFit.cover),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text("Cress", style: Theme.of(context).textTheme.bodySmall,)
      ],
    );
  }
}
