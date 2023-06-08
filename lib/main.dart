import 'package:bank_app/app.dart';
import 'package:bank_app/core/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank App',
      theme: lightTheme,
      home: const App(),
    );
  }
}
