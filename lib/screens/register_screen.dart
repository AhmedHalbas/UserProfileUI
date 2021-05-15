import 'package:flutter/material.dart';
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
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CustomHeader(
                title: 'Register new account',
                height: scrHeight,
              ),
              CustomBody(
                height: scrHeight * 0.75,
                widget: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        padding:
                            EdgeInsets.symmetric(horizontal: scrWidth * 0.15),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                color: kPrimaryColor,
                                textColor: Colors.white,
                                title: 'Male',
                              ),
                            ),
                            SizedBox(
                              width: scrWidth * 0.05,
                            ),
                            Expanded(
                              child: CustomButton(
                                color: kButtonPrimaryColor,
                                textColor: Colors.white,
                                title: 'Female',
                              ),
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
