import 'package:bookly/core/utils/images/images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.logo,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
