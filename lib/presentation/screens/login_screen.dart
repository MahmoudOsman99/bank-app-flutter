import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:bank_app/presentation/widgets/text_form_field.dart';
import 'package:bank_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final userNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          // backgroundColor: AppColors.mainBlueColor,
          body: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              end: 20,
              top: 100,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                      ),
                    ),
                    Text(
                      'Log in',
                      style: context.textList.bodyLarge,
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    const Text(''),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.05,
                ),
                CircleAvatar(
                  backgroundColor: AppColors.greyColor,
                  radius: 50,
                  child: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.grey[600],
                    size: 50,
                  ),
                ),
                SizedBox(
                  height: context.height * 0.05,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      defaultTextFormField(
                        context: context,
                        controller: userNameController,
                        labelText: 'Name',
                      ),
                      SizedBox(
                        height: context.height * 0.05,
                      ),
                      defaultTextFormField(
                        context: context,
                        isPassword: true,
                        controller: userNameController,
                        labelText: 'Password',
                      ),
                      SizedBox(
                        height: context.height * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          // TODO navigate to forget password page
                        },
                        child: Text(
                          'Forgot Password?',
                          style: context.textList.bodyMedium!.copyWith(
                            color: Colors.white60,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.2,
                      ),

                      //! default login button widget
                      defaultButton(
                        backgroundColor: AppColors.orangeColor,
                        height: 0.004,
                        text: 'Log in',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
