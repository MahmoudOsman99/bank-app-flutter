import 'dart:ffi';

import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:bank_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionHistoryItem extends StatelessWidget {
  int index;
  TransactionHistoryItem({super.key, this.index = 0});

  late DateFormat formatter = DateFormat('yyyy-MMM-dd hh:mm');
  late String formatted = formatter.format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.height * 0.13,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 10),
        child: Row(
          children: [
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.orangeColor,
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              width: context.width * 0.8,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: context.width * 0.3,
                            child: Text(
                              'Last transaction',
                              overflow: TextOverflow.ellipsis,
                              style: context.textList.displayMedium!.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                            width: context.width * 0.15,
                            child: const DecoratedBox(
                              decoration: BoxDecoration(
                                color: AppColors.greyColor,
                              ),
                            ),
                          ),
                          Text(
                            '+\$9.99',
                            style: context.textList.bodyMedium!.copyWith(
                              color:
                                  index.isEven ? Colors.green[400] : Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: context.width * 0.4,
                            child: Text(
                              formatted,
                              overflow: TextOverflow.ellipsis,
                              style: context.textList.displayMedium!.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.visibility,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
