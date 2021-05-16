import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CustomHeader(
                title: 'Confirmation Code',
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
                      'Verification',
                      style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff181461)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.0.w, vertical: 1.0.h),
                      child: PinFieldAutoFill(codeLength: 4),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 3.0.w, right: 3.0.w, top: 2.0.h),
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
                          Navigator.pushNamed(
                              context, ChangePasswordScreen.id);
                        }),
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
