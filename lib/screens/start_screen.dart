import 'package:flutter/material.dart';
import 'package:user_profile_app_ui/components/custom_body.dart';
import 'package:user_profile_app_ui/components/custom_button.dart';
import 'package:user_profile_app_ui/screens/login_screen.dart';
import 'package:user_profile_app_ui/screens/register_screen.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class StartScreen extends StatelessWidget {
  static String id = 'StartScreen';

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: scrHeight,
            child: Stack(
              children: [
                Container(
                  width: scrWidth,
                  decoration: boxDecoration(kPrimaryColor),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: scrHeight * 0.1),
                    child: Image.asset(
                      "assets/images/ic_intro_image.png",
                      height: scrHeight * 0.4,
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
                            fontSize: scrWidth * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: scrHeight * 0.02,
                        ),
                        Text(
                          'This is the first version of user profile app. \n Please sign in or create an account below.',
                          style: TextStyle(fontSize: scrWidth * 0.03),
                        ),
                        CustomButton(
                            color: Colors.white,
                            textColor: kButtonPrimaryColor,
                            title: 'Login',
                            onPressed: () {
                              Navigator.pushNamed(context, LoginScreen.id);
                            }),
                        CustomButton(
                            color: kButtonPrimaryColor,
                            textColor: Colors.white,
                            title: 'Create an Account',
                            onPressed: () {
                              Navigator.pushNamed(context, RegisterScreen.id);
                            })
                      ],
                    ),
                    height: scrHeight * 0.5)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
