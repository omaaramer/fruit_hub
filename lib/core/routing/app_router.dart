import 'package:flutter/material.dart';
import 'package:fruit_hup/core/routing/routes.dart';
import 'package:fruit_hup/features/splash/presentation/view/splash_view.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
