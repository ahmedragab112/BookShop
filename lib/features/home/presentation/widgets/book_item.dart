import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:bookly/core/utils/layout/app_size.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeOfScreen.screenWidth(context) * .35,
      child: AspectRatio(
        aspectRatio: 1 / 3,
        child: Container(
          decoration: const BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Book 1 Hightligh.png',
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
