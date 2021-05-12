import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_app_ui/components/custom_button.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
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
              Positioned(
                height: scrHeight * 0.5,
                bottom: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: scrWidth,
                  decoration: boxDecoration(Colors.white),
                  padding: EdgeInsets.all(scrHeight * 0.02),
                  child: Column(
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
                          onPressed: () {}),
                      CustomButton(
                          color: kButtonPrimaryColor,
                          textColor: Colors.white,
                          title: 'Create an Account',
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

  BoxDecoration boxDecoration(color) {
    return BoxDecoration(
        color: color,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(40.0),
          topRight: const Radius.circular(40.0),
        ));
  }
}
