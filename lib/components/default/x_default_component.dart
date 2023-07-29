import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/style/default_values.dart';

class XDefaultComponent extends StatelessWidget {
  Widget? title, subtitle, actionPrimary, actionSecondary;

  XDefaultComponent(
      {super.key,
      this.title,
      this.subtitle,
      this.actionPrimary,
      this.actionSecondary});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        title!,
        SizedBox(
          height: XPadding,
        ),
        subtitle!,
        SizedBox(
          height: XPadding,
        ),
        actionPrimary!,
        SizedBox(
          height: XPadding,
        ),
        actionSecondary!
      ],
    );
  }
}
