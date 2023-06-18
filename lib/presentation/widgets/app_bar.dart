// import 'package:flutter/material.dart';
import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBar({
  required String title,
  // required VoidCallback backIconPress,
  List<Widget>? actions,
  required BuildContext context,
}) =>
    AppBar(
      title: Text(
        title,
        style: context.textList.bodyLarge!.copyWith(fontSize: 40),
      ),
      centerTitle: true,
      actions: actions,
      leading: TextButton(
        // onPressed: backIconPress,
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
