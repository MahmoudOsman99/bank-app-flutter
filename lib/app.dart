import 'package:bank_app/presentation/screens/login_screen.dart';
import 'package:bank_app/presentation/screens/my_account_screen.dart';
import 'package:bank_app/presentation/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyAccountScreen(),
    );
  }
}
