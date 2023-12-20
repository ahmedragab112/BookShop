import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:bookly/core/utils/layout/app_size.dart';
import 'package:flutter/material.dart';

class CustomBook extends StatelessWidget {
  const CustomBook({super.key, required this.bookImage});
  final String bookImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeOfScreen.screenWidth(context) * .35,
      child: AspectRatio(
        aspectRatio: 1 / 3,
        child: Container(
          decoration:  BoxDecoration(
            color: backGroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
                image: NetworkImage(
                 bookImage,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
