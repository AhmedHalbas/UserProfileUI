import 'package:flutter/material.dart';
import 'package:user_profile_app_ui/components/custom_body.dart';
import 'package:user_profile_app_ui/components/custom_button.dart';
import 'package:user_profile_app_ui/components/custom_header.dart';
import 'package:user_profile_app_ui/components/custom_text_field.dart';
import 'package:user_profile_app_ui/screens/reset_password_screen.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CustomHeader(
                title: 'Login to your account',
                height: scrHeight,
              ),
              CustomBody(
                height: scrHeight * 0.75,
                widget: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextField(hint: 'Please enter your Email'),
                      CustomTextField(
                          hint: 'Please enter your Password', isObscured: true),
                      Container(
                        margin: EdgeInsets.only(right: 20, top: 10),
                        width: scrWidth,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ResetPasswordScreen.id);
                          },
                          child: Text(
                            'forget Password?',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: kButtonPrimaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      CustomButton(
                          color: kButtonPrimaryColor,
                          textColor: Colors.white,
                          title: 'Login',
                          onPressed: () {})
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
