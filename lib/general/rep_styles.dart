import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rep/general/rep_colors.dart';

class RepStyles {
  static TextStyle warningRed() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: RepColors.textRed)
    );
  }

  static TextStyle warningRedBold() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: RepColors.textRed),
      fontWeight: FontWeight.bold
    );
  }

  static TextStyle pureCyan() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: RepColors.textCyan)
    );
  }

  static TextStyle pureCyanBold() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: RepColors.textCyan),
      fontWeight: FontWeight.bold
    );
  }

  static TextStyle cleanWhite() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: Colors.white)
    );
  }

  static TextStyle cleanWhiteBold() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: Colors.white),
      fontWeight: FontWeight.bold
    );
  }


  static TextStyle titleSmall() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: Colors.white),
      fontSize: 20,
      fontWeight: FontWeight.bold
    );
  }

  static TextStyle titleSmallItalic() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: Colors.white),
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic
    );
  }

  static TextStyle titleMedium() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: Colors.white),
      fontSize: 30,
      fontWeight: FontWeight.bold
    );
  }

  static TextStyle titleLarge() {
    return GoogleFonts.lato(
      textStyle: TextStyle(color: Colors.white),
      fontSize: 40,
      fontWeight: FontWeight.bold
    );
  }
}