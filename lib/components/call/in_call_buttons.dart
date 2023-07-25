import 'package:flutter/material.dart';

import '../../utils/default_values.dart';

class InCallButton extends StatelessWidget {
  const InCallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(20,10,20,20),
      padding: EdgeInsets.symmetric(vertical: XPadding*2, horizontal: XPadding),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(XPadding*4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon:   CircleAvatar(
                backgroundColor: Colors.white,
                radius: XPadding*2,
                child: Icon(
                  Icons.bluetooth_disabled_outlined,
                  color: Colors.black54,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon:   CircleAvatar(
                backgroundColor: Colors.white,
                radius: XPadding*2,
                child: Icon(
                  Icons.mic_none,
                  color: Colors.black54,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon:   CircleAvatar(
                backgroundColor: Colors.red,
                radius: XPadding*3,
                child: Icon(
                  Icons.call_end,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon:   CircleAvatar(
                backgroundColor: Colors.white,
                radius: XPadding*2,
                child: Icon(
                  Icons.volume_up,
                  color: Colors.black54,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon:   CircleAvatar(
                backgroundColor: Colors.white,
                radius: XPadding*2,
                child: Icon(
                  Icons.add,
                  color: Colors.black54,
                ),
              )),

        ],
      ),
    );
  }
}
