import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle bodyLarge = GoogleFonts.marcellus(
      color: whiteColor, fontSize: 30, fontWeight: FontWeight.w400);
  static TextStyle bodyMeduim = GoogleFonts.marcellus(
      color: whiteColor, fontSize: 20, fontWeight: FontWeight.w600);
  static TextStyle bodySmall = GoogleFonts.marcellus(
      fontSize: 18, color: whiteColor, fontWeight: FontWeight.w600);
}
