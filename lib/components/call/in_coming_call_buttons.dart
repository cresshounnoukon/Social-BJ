import 'package:flutter/material.dart';

import '../../style/default_values.dart';



class IncomingCallButton extends StatelessWidget {
  const IncomingCallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(XPadding*2),
      padding: EdgeInsets.all(XPadding*2),
      decoration: BoxDecoration(
          color: XColorWhite.withOpacity(XPadding*0.8),
          borderRadius: BorderRadius.circular(XPadding*4)),
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
                    radius: 30,
                    child: Icon(
                      Icons.call_end,
                      color: XColorWhite,
                    ),
                  )),
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 25,
                    child: Icon(
                      Icons.message,
                      color: Colors.black54,
                    ),
                  )),
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    radius: 30,
                    child: Icon(
                      Icons.call,
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
