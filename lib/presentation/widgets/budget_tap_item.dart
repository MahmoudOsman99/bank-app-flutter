import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:bank_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

Widget budgetTapItem({
  required String text,
  required BuildContext context,
}) =>
    SizedBox(
      width: context.width / 4,
      height: context.height * 0.04,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.orangeColor,
        ),
        child: Center(
          child: Text(
            text,
            style: context.textList.bodySmall,
          ),
        ),
      ),
    );
