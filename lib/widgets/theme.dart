import "package:flutter/material.dart";
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";

class MyTheme {
  static lightTheme(BuildContext context) {
    return ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20)));
  }

  static darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
