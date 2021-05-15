import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:user_profile_app_ui/components/custom_body.dart';
import 'package:user_profile_app_ui/components/custom_button.dart';
import 'package:user_profile_app_ui/components/custom_header.dart';
import 'package:user_profile_app_ui/components/custom_text_field.dart';
import 'package:user_profile_app_ui/screens/profile_screen.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class RegisterScreen extends StatelessWidget {
  static String id = 'RegisterScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CustomHeader(
                title: 'Register new account',
                height: 100.0.h,
              ),
              CustomBody(
                height: 75.0.h,
                widget: Expanded(
                  child: ListView(
                    children: [
                      CustomTextField(
                        hint: 'Please enter your Full Name',
                      ),
                      CustomTextField(hint: 'Please enter your Email'),
                      CustomTextField(
                          hint: 'Please enter your Password', isObscured: true),
                      CustomTextField(
                          hint: 'Please re-enter your Password',
                          isObscured: true),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                color: kPrimaryColor,
                                textColor: Colors.white,
                                title: 'Male',
                              ),
                              flex: 1,
                            ),
                            SizedBox(
                              width: 5.0.w,
                            ),
                            Expanded(
                              child: CustomButton(
                                color: kButtonPrimaryColor,
                                textColor: Colors.white,
                                title: 'Female',
                              ),
                              flex: 1,
                            )
                          ],
                        ),
                      ),
                      CustomButton(
                          color: kButtonPrimaryColor,
                          textColor: Colors.white,
                          title: 'Register',
                          onPressed: () {
                            Navigator.pushNamed(context, ProfileScreen.id);
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
