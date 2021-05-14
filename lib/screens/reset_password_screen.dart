import 'package:flutter/material.dart';
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
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CustomHeader(
                title: 'Reset your password',
                height: scrHeight,
              ),
              CustomBody(
                height: scrHeight * 0.75,
                widget: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/ic_intro_image.png",
                        height: scrHeight * 0.4,
                      ),
                      Text(
                        'Reset Password',
                        style: TextStyle(
                            fontSize: scrWidth * 0.04,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
