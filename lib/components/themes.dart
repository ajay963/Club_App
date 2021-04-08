import 'package:club_app/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static ThemeData lightThemeData(BuildContext context) => ThemeData(
      backgroundColor: kLtGrey,
      iconTheme: IconThemeData(color: kMdGrey, size: 18),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontSize: 32,
            color: kMdGrey,
            fontWeight: FontWeight.bold),
        bodyText1: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontSize: 20,
            color: kDarkGrey),
        subtitle1: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontSize: 20,
            color: kDarkBlue),
        subtitle2: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontSize: 16,
            color: kDarkGrey,
            fontWeight: FontWeight.bold),
        caption: TextStyle(
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontSize: 12,
          color: kDarkBlue,
        ),
      ));
}
