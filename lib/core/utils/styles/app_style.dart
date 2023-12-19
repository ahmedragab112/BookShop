import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle bodyLarge = GoogleFonts.montserrat(
    color: whiteColor,
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyMeduim = GoogleFonts.montserrat(
      color: whiteColor, fontSize: 14, fontWeight: FontWeight.w600);
  static TextStyle bodySmall = GoogleFonts.montserrat(
      fontSize: 12, color: whiteColor, fontWeight: FontWeight.w600);
}
