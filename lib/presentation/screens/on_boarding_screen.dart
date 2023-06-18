import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:bank_app/core/routes.dart';
import 'package:bank_app/presentation/screens/login_screen.dart';
import 'package:bank_app/presentation/widgets/bottom_sheet.dart';
import 'package:bank_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/backImage.jpg',
          height: context.height,
          width: context.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                top: context.height * 0.07,
                start: 20,
                end: 20,
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/debit-card.png',
                          width: 80,
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.030,
                      ),
                      Text(
                        'Bank App',
                        style: context.textList.displayLarge,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Need Help?',
                        style: context.textList.bodySmall!.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Log in',
                            style: context.textList.displayMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.orangeColor),
                          ),
                          IconButton(
                            onPressed: () {
                              // navigateTo(LoginScreen(), context);
                              //TODO Show bottom sheet with login and register

                              Navigator.pushNamed(
                                context,
                                AppRoutes.loginRoute,
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.orangeColor,
                              size: 36.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: context.height * 0.040,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void navigateTo(Widget screen, context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
