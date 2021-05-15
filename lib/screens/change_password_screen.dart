import 'package:flutter/material.dart';
import 'package:user_profile_app_ui/components/custom_body.dart';
import 'package:user_profile_app_ui/components/custom_button.dart';
import 'package:user_profile_app_ui/components/custom_header.dart';
import 'package:user_profile_app_ui/components/custom_text_field.dart';
import 'package:user_profile_app_ui/screens/profile_screen.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class ChangePasswordScreen extends StatelessWidget {
  static String id = 'ChangePasswordScreen';
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
                title: 'Change Password',
                height: scrHeight,
              ),
              CustomBody(
                height: scrHeight * 0.75,
                widget: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextField(
                          hint: 'Please enter your Password', isObscured: true),
                      CustomTextField(
                          hint: 'Please re-enter your Password',
                          isObscured: true),
                      CustomButton(
                          color: kButtonPrimaryColor,
                          textColor: Colors.white,
                          title: 'Change Password',
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
