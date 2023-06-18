import 'package:bank_app/core/routes.dart';
import 'package:bank_app/presentation/screens/budget_screen.dart';
import 'package:bank_app/presentation/screens/error_screen.dart';
import 'package:bank_app/presentation/screens/login_screen.dart';
import 'package:bank_app/presentation/screens/my_account_screen.dart';
import 'package:bank_app/presentation/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case AppRoutes.loginRoute:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case AppRoutes.budgetRoute:
        return MaterialPageRoute(builder: (context) => BudgetScreen());
      case AppRoutes.myAccountRoute:
        return MaterialPageRoute(builder: (context) => const MyAccountScreen());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorScreen());
    }
  }
}
