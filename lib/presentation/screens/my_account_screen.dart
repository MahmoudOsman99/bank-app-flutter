import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:bank_app/core/routes.dart';
import 'package:bank_app/presentation/widgets/app_bar.dart';
import 'package:bank_app/presentation/widgets/button.dart';
import 'package:bank_app/presentation/widgets/transaction_history_item.dart';
import 'package:bank_app/utils/toast.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/backImage.jpg",
          height: context.height,
          width: context.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: appBar(
            title: 'My Account',
            // backIconPress: () => Navigator.pop(context),
            context: context,
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     IconButton(
                //       onPressed: () {
                //         Navigator.pop(context);
                //       },
                //       icon: const Icon(
                //         Icons.arrow_back_rounded,
                //         color: Colors.white,
                //         size: 40,
                //       ),
                //     ),
                //     const Spacer(),
                //     Text(
                //       'My Account',
                //       style: context.textList.displayLarge!.copyWith(
                //         // color: Colors.
                //         fontSize: 40,
                //       ),
                //     ),
                //     const Spacer(),
                //     const Spacer(),
                //   ],
                // ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                SizedBox(
                  width: context.width * 0.85,
                  height: context.height * 0.25,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // the position of the grey square shape
                            children: [
                              // first item
                              SizedBox(
                                height: context.height * 0.06,
                                width: context.width * 0.15,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: AppColors.greyColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),

                              const SizedBox(
                                width: 15,
                              ),
                              //second item with column
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$ 5,634.12',
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        context.textList.displayLarge!.copyWith(
                                      color: Colors.blue[900],
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0,
                                      // overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    'Account Balance',
                                    style:
                                        context.textList.bodyMedium!.copyWith(
                                      color: Colors.grey[600],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          //! the tow buttons section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defaultButton(
                                backgroundColor: AppColors.orangeColor,
                                height: 0.1,
                                isBold: true,
                                text: 'Send Payment',
                                fontSize: 14,
                                onPressed: () {
                                  ShowToast.show(
                                    message:
                                        'You clicked here to go to budget screen',
                                    backColor: Colors.green,
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.budgetRoute,
                                  );
                                },
                              ),
                              defaultButton(
                                backgroundColor: Colors.grey[300]!,
                                textColor: AppColors.orangeColor,
                                height: 0,
                                isBold: true,
                                text: 'Get Payment',
                                fontSize: 14,
                                onPressed: () {
                                  ShowToast.show(
                                    message:
                                        'You clicked here to go to budget screen',
                                    backColor: Colors.green,
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.budgetRoute,
                                  );
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //! Transactions Section
                SizedBox(
                  height: context.height * 0.04,
                ),
                Text(
                  'Transactions',
                  style: context.textList.displayMedium!.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: context.height * 0.04,
                ),

                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) =>
                        TransactionHistoryItem(index: index),
                    itemCount: 15,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
