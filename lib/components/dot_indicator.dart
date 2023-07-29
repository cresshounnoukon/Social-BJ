import 'package:flutter/material.dart';

import '../style/default_values.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 300),
      height: XPadding,
      width: isActive ? XPadding * 4 : XPadding,
      margin: EdgeInsets.only(right: XPadding - 2),
      decoration: BoxDecoration(
          color: isActive ? Theme.of(context).primaryColor : XColorWhite,
          gradient: isActive
              ? Theme.of(context).brightness == Brightness.light
                  ? XLineaGradientBeninMap
                  : XLineaGradientBeninMapDark
              : null,
          borderRadius: BorderRadius.circular(XPadding)),
    );
  }
}
