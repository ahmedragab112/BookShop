import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:bookly/core/utils/styles/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: backGroundColor,
    textTheme: TextTheme(
      bodyLarge: AppTextStyle.bodyLarge,
      bodyMedium: AppTextStyle.bodyMeduim,
      bodySmall: AppTextStyle.bodySmall,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backGroundColor,
    textTheme: TextTheme(
      bodyLarge: AppTextStyle.bodyLarge,
      bodyMedium: AppTextStyle.bodyMeduim,
      bodySmall: AppTextStyle.bodySmall,
    ),
  );
}
