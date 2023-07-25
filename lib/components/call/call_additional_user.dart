import 'package:flutter/material.dart';

import '../../utils/default_values.dart';

class CallAdditionalUsers extends StatelessWidget {
  const CallAdditionalUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
       width: 60,
       height: 60,

        decoration: BoxDecoration(
         // color: Colors.white,
        // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: XColorWhite
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/onboarding/5.png"),
            fit: BoxFit.cover
          )



        ),

    );
  }
}
