import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:user_profile_app_ui/components/custom_body.dart';
import 'package:user_profile_app_ui/components/custom_button.dart';
import 'package:user_profile_app_ui/components/custom_header.dart';
import 'package:user_profile_app_ui/screens/change_password_screen.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class VerificationScreen extends StatelessWidget {
  static String id = 'VerificationScreen';
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
                title: 'Confirmation Code',
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
                        'Verification',
                        style: TextStyle(
                            fontSize: scrWidth * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff181461)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: PinFieldAutoFill(codeLength: 4),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Resend code',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kButtonPrimaryColor),
                            ),
                            Text(
                              'Change email',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kButtonPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                          color: kButtonPrimaryColor,
                          textColor: Colors.white,
                          title: 'Continue',
                          onPressed: () {
                            Navigator.pushNamed(context, ChangePasswordScreen.id);
                          }),
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
