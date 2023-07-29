import 'package:flutter/material.dart';

import '../style/default_values.dart';

class XCircleAvatar extends StatelessWidget {
  const XCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: XPadding*8,
      margin: EdgeInsets.only(right: XPadding/3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(3),

            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Theme
                    .of(context)
                    .primaryColor, width: 2),
                shape: BoxShape.circle),
            child:   CircleAvatar(
              radius: XPadding*3,
              backgroundImage:
              AssetImage("assets/images/onboarding/5.png"),
            ),
          ),
          SizedBox(
            height: XPadding,
          ),
          Text(
            "_cresshounnoukon",
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
