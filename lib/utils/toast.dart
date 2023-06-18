import 'package:bank_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToast {
  static show({
    required String message,
    Color backColor = AppColors.orangeColor,
  }) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.SNACKBAR,
      textColor: Colors.white,
      backgroundColor: backColor,
      webShowClose: true,
    );
  }
}
