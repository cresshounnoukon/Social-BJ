import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  DotIndicator({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        microseconds: 300
      ),
      height: isActive ? 20 : 10,
      width: 10,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: isActive ? Theme.of(context).primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(10)),
    );
  }
}
