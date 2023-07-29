import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/style/color_schemes.g.dart';
import 'package:google_fonts/google_fonts.dart';

import 'default_values.dart';


class XTheme {
  static final XTheme _singleton = new XTheme._internal();

  factory XTheme() {
    return _singleton;
  }

  XTheme._internal();


  ThemeData light( ) {

    return ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        fontFamily: GoogleFonts.poppins().fontFamily,

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(XPadding * 2)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(XPadding * 2)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
              ),
              borderRadius: BorderRadius.circular(XPadding * 2)),
        )
    );

  }

  ThemeData dark () {

    return ThemeData(
        useMaterial3: true,
        colorScheme:  darkColorScheme,
        fontFamily: GoogleFonts.poppins().fontFamily,

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(XPadding * 2)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(XPadding * 2)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(


              ),
              borderRadius: BorderRadius.circular(XPadding * 2)),
        )
    );

  }
}
