import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';

Widget defaultTextFormField({
  required BuildContext context,
  required TextEditingController controller,
  String? labelText,
  bool isPassword = false,
  bool isReadOnly = false,
  double radius = 30,
  String? Function(String? val)? validator,
}) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 2),
            child: Text(
              labelText!,
              style: context.textList.displayMedium!.copyWith(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: controller,
              enableSuggestions: true,
              obscureText: isPassword,
              decoration: InputDecoration(
                labelStyle: context.textList.bodyMedium,
                border: InputBorder.none,
              ),
              readOnly: isReadOnly,
              validator: validator,
              style: context.textList.displayMedium!.copyWith(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
                height: 0.1,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
