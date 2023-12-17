import 'package:bookly/config/router/routes.dart';
import 'package:bookly/features/home/home.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<Widget> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
       return MaterialPageRoute(
          builder: (context) => const Home(),
        );
 
      default:
      return MaterialPageRoute(
          builder: (context) => const Home(),
        );
    }
  }
}
