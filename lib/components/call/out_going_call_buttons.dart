import 'package:flutter/material.dart';

import '../../style/default_values.dart';

class OutGoingCallButton extends StatelessWidget {
  const OutGoingCallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(   XPadding*2,),
      padding: EdgeInsets.all( XPadding*2),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon:   CircleAvatar(
                    backgroundColor: Colors.red,
                    radius:  XPadding*3,
                    child: Icon(
                      Icons.call_end,
                      color: XColorWhite,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
