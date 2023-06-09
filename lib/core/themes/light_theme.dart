import 'package:bank_app/core/themes/text_settings.dart';
import 'package:bank_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: textSettings,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    ));
