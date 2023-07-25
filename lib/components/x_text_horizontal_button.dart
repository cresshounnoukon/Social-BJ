import 'package:flutter/material.dart';

import '../utils/default_values.dart';

class XTextHorizontalButton extends StatelessWidget {
  final Icon icon;
  final String title;
  final void Function()? onTap;

  XTextHorizontalButton(
      {super.key, required this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            width:  XPadding,
          ),
          Text("$title")
        ],
      ),
    );
  }
}
