import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/utils/default_values.dart';

class XButton extends StatelessWidget {
  final String? title;
  final void Function()? onTap;

  XButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return
      FilledButton(

          onPressed: onTap,
          child: Padding(
            padding:   EdgeInsets.symmetric(horizontal: XPadding*2, vertical: XPadding*2 ),
            child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text(
              "$title",
              //style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const Icon(
              Icons.arrow_forward,
             // color: Colors.white,
              size: 25,
            )
        ],
      ),
          ));
  }
}
