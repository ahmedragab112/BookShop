import 'package:bookly/config/router/routes.dart';
import 'package:bookly/core/utils/images/images.dart';
import 'package:bookly/features/splash/presentation/view/widget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    slidingAnimation();
    navigatToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.logo,
            fit: BoxFit.fitWidth,
          ),
          const Gap(10),
          SlidingText(animation: animation)
        ],
      ),
    );
  }

  void slidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  Future<Object?> navigatToHome() {
    return Future.delayed(
      const Duration(seconds: 4),
      () => Navigator.pushNamed(context, AppRoutes.home),
    );
  }
}
