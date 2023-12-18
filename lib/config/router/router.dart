import 'package:bookly/config/router/routes.dart';
import 'package:bookly/features/home/presentation/pages/home.dart';
import 'package:bookly/features/splash/presentation/view/splash.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<Widget> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return PageRouteBuilder(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) =>
                const Home(),
            transitionDuration: const Duration(milliseconds:300),
            transitionsBuilder: (_, animation, __, child) => FadeTransition(
                  opacity: animation,
                  child: child,
                ));
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
    }
  }
}
