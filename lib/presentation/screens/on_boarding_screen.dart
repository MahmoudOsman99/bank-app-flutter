import 'package:bank_app/core/extensions/app_extensions.dart';
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
          "assets/images/backImage.jpg",
          height: context.height,
          width: context.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
          ),
          backgroundColor: AppColors.mainBlueColor,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                top: context.height * 0.03,
                start: 20,
                end: 20,
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage('assets/images/right-arrow.png'),
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
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Log in',
                            style: context.textList.displayMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              navigateTo(LoginScreen(), context);
                              //TODO Show bottom sheet with login and register
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
