import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchFiled extends StatelessWidget {
  const CustomSearchFiled({super.key, this.onChanged});
final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        onChanged:onChanged,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
                color: whiteColor,
              ),
              onPressed: () {},
            ),
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
      ),
    );
  }
}
