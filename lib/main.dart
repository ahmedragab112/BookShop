import 'package:bloc/bloc.dart';
import 'package:bookly/config/router/router.dart';
import 'package:bookly/config/theme/theme.dart';
import 'package:bookly/core/service_locator/locator.dart';
import 'package:bookly/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  setUpLocator();
  runApp(const BookShope());
}

class BookShope extends StatelessWidget {
  const BookShope({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          themeMode: ThemeMode.dark,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          onGenerateRoute: AppRouter.onGenerateRoutes,
        );
      },
    );
  }
}
