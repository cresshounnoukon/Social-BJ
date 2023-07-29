import 'package:flutter/material.dart';

double XPadding = 10;
Color XColorWhite = Colors.white;

const ONBORDING = "ONBORDING";

final XLineaGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ///  Theme.of(context).primaryColor.withOpacity(.5),
      Colors.green.withOpacity(.5),
      Colors.yellow.withOpacity(.5),

      Colors.red.withOpacity(.5),
      Colors.black.withOpacity(.8),
//  Colors.white.withOpacity(.5),
    ]);

final XLineaGradientBeninMap = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.centerRight,
    colors: [
      ///  Theme.of(context).primaryColor.withOpacity(.5),
      Colors.green.withOpacity(.5),
      Colors.yellow.withOpacity(.5),
      Colors.red.withOpacity(.5),
//  Colors.white.withOpacity(.5),
    ]);
const XLineaGradientBeninMapDark = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.centerRight,
    colors: [
      ///  Theme.of(context).primaryColor.withOpacity(.5),
      Colors.black,
      Colors.grey,
      Colors.white
//  Colors.white.withOpacity(.5),
    ]);

final XLineaGradientDark = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ///  Theme.of(context).primaryColor.withOpacity(.5),
      Colors.black.withOpacity(.8),
      Colors.red.withOpacity(.8),
      // Colors.black.withOpacity(.8),
//  Colors.white.withOpacity(.5),
    ]);
