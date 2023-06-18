import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Scaffold(
          backgroundColor: Colors.white,
          // body: Center(
          //   child: Text(
          //     'Error 404 Not Found',
          //     style: context.textList.displayLarge,
          //   ),
          // ),
        ),
        Image.asset(
          'assets/images/error-404.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
