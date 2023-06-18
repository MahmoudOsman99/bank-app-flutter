import 'package:bank_app/presentation/screens/budget_screen.dart';
import 'package:bank_app/presentation/screens/login_screen.dart';
import 'package:bank_app/presentation/screens/my_account_screen.dart';
import 'package:flutter/material.dart';

import 'core/app_router.dart';
import 'core/routes.dart';
import 'core/themes/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank App',
      theme: lightTheme,
      home: BudgetScreen(),
      // initialRoute: AppRoutes.homeRoute,
      // onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
