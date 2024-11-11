import 'package:flutter/material.dart';
import 'package:fruit_hup/core/routing/routes.dart';
import 'package:fruit_hup/features/auth/presentation/view/login_view.dart';
import 'package:fruit_hup/features/auth/presentation/view/signup_view.dart';
import 'package:fruit_hup/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:fruit_hup/features/splash/presentation/view/splash_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());

      case AppRoutes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case AppRoutes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());

      case AppRoutes.signup:
        return MaterialPageRoute(builder: (_) => const SignupView());

      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
