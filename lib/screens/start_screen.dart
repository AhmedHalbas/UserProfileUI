import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:user_profile_app_ui/components/custom_body.dart';
import 'package:user_profile_app_ui/components/custom_button.dart';
import 'package:user_profile_app_ui/screens/login_screen.dart';
import 'package:user_profile_app_ui/screens/register_screen.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class StartScreen extends StatelessWidget {
  static String id = 'StartScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 100.0.h,
            child: Stack(
              children: [
                Container(
                  width: 100.0.w,
                  color: kPrimaryColor,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0.h),
                    child: Image.asset(
                      "assets/images/ic_intro_image.png",
                      height: 40.0.h,
                    ),
                  ),
                ),
                CustomBody(
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome To Our App!',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 2.0.h,
                        ),
                        Text(
                          'This is the first version of user profile app. \n Please sign in or create an account below.',
                          style: TextStyle(fontSize: 13.0.sp),
                        ),
                        CustomButton(
                            color: kButtonPrimaryColor,
                            textColor: Colors.white,
                            title: 'Login',
                            onPressed: () {
                              Navigator.pushNamed(context, LoginScreen.id);
                            }),
                        CustomButton(
                            color: kPrimaryColor,
                            textColor: Colors.white,
                            title: 'Create an Account',
                            onPressed: () {
                              Navigator.pushNamed(context, RegisterScreen.id);
                            })
                      ],
                    ),
                    height: 50.0.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
