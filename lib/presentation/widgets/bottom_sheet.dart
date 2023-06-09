import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';

Widget bottomSheet() => BottomSheet(
    onClosing: () {},
    builder: ((context) {
      return SizedBox(
        width: double.infinity,
        height: context.height / 2,
        child: Column(
          children: [
            Text(
              'Login',
              style: context.textList.bodyMedium,
            ),
            TextField(),
          ],
        ),
      );
    }));
