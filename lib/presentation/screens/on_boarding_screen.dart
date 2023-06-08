import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:bank_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBoardingColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: context.height / 8,
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
                        onPressed: () {},
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
    );
  }
}
