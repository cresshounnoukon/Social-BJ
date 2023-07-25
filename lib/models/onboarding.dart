import 'package:flutter/cupertino.dart';

class Onboarding {
  final String? title;
  final String? description;
  final String image;

  final IconData? iconData;

  Onboarding(
      {required this.title,
      this.description,
      required this.image,
      this.iconData});
}
