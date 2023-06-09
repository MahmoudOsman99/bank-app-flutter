import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class defaultButton extends StatelessWidget {
  Color backgroundColor;
  Color? textColor;
  String text;
  double height;
  double? fontSize;
  bool? isBold;

  defaultButton({
    super.key,
    required this.backgroundColor,
    this.textColor,
    required this.height,
    required this.text,
    this.fontSize,
    this.isBold,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          // horizontal: context.width / 5,
          vertical: height,
        ),
        child: TextButton(
          child: Text(
            text,
            style: context.textList.bodyLarge!.copyWith(
                fontWeight:
                    isBold != null ? FontWeight.bold : FontWeight.normal,
                fontSize: fontSize ?? 20,
                color: textColor ?? Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
