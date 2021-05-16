import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:user_profile_app_ui/components/custom_body.dart';
import 'package:user_profile_app_ui/components/custom_button.dart';
import 'package:user_profile_app_ui/components/custom_header.dart';
import 'package:user_profile_app_ui/components/custom_text_field.dart';
import 'package:user_profile_app_ui/screens/verification_screen.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class ResetPasswordScreen extends StatelessWidget {
  static String id = 'ResetPasswordScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CustomHeader(
                title: 'Reset your password',
                height: 100.0.h,
              ),
              CustomBody(
                height: 75.0.h,
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/ic_intro_image.png",
                      height: 40.0.h,
                    ),
                    Text(
                      'Reset Password',
                      style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff181461)),
                    ),
                    CustomTextField(hint: 'Please enter your Email'),
                    CustomButton(
                        color: kButtonPrimaryColor,
                        textColor: Colors.white,
                        title: 'Reset password',
                        onPressed: () {
                          Navigator.pushNamed(context, VerificationScreen.id);
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
