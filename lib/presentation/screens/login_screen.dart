import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:bank_app/core/routes.dart';
import 'package:bank_app/presentation/screens/my_account_screen.dart';
import 'package:bank_app/presentation/widgets/app_bar.dart';
import 'package:bank_app/presentation/widgets/text_form_field.dart';
import 'package:bank_app/utils/app_colors.dart';
import 'package:bank_app/utils/toast.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          // "assets/images/login_back.jpg",
          "assets/images/backImage.jpg",
          height: context.height,
          width: context.width,
          fit: BoxFit.fill,
        ),
        Scaffold(
          // resizeToAvoidBottomInset: true,
          appBar: appBar(
            title: 'Login',
            context: context,
          ),
          backgroundColor: Colors.transparent,
          // backgroundColor: AppColors.mainBlueColor,
          body: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              end: 20,
              // top: 50,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: context.height * 0.05,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: CircleAvatar(
                    backgroundColor: AppColors.greyColor,
                    radius: 150,
                    child: Image.asset('assets/images/login.jpg'),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.05,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
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
                            controller: passwordController,
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
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.1,
                          ),

                          //! default login button widget
                          defaultButton(
                            backgroundColor: AppColors.orangeColor,
                            height: 0.004,
                            text: 'Log in',
                            onPressed: () {
                              ShowToast.show(
                                message: 'Logged in Successfully',
                                backColor: Colors.green,
                              );
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const MyAccountScreen(),
                              //   ),
                              // );

                              Navigator.pushNamed(
                                context,
                                AppRoutes.myAccountRoute,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
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
