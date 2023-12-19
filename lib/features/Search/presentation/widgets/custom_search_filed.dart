import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:flutter/material.dart';

class CustomSearchFiled extends StatelessWidget {
  const CustomSearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'search',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                width: 2,
                color: whiteColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                width: 2,
                color: whiteColor,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                width: 2,
                color: whiteColor,
              ))),
    );
  }
}
