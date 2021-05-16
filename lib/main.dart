import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:user_profile_app_ui/screens/change_password_screen.dart';
import 'package:user_profile_app_ui/screens/login_screen.dart';
import 'package:user_profile_app_ui/screens/profile_screen.dart';
import 'package:user_profile_app_ui/screens/register_screen.dart';
import 'package:user_profile_app_ui/screens/reset_password_screen.dart';
import 'package:user_profile_app_ui/screens/start_screen.dart';
import 'package:user_profile_app_ui/screens/verification_screen.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(
          //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            SizerUtil().init(constraints, orientation); //initialize SizerUtil
            return MaterialApp(
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              theme: ThemeData.light().copyWith(
                backgroundColor: Colors.white,
                scaffoldBackgroundColor: Colors.white,
              ),
              home: StartScreen(),
              initialRoute: StartScreen.id,
              routes: {
                StartScreen.id: (context) => StartScreen(),
                LoginScreen.id: (context) => LoginScreen(),
                RegisterScreen.id: (context) => RegisterScreen(),
                ResetPasswordScreen.id: (context) => ResetPasswordScreen(),
                VerificationScreen.id: (context) => VerificationScreen(),
                ChangePasswordScreen.id: (context) => ChangePasswordScreen(),
                ProfileScreen.id: (context) => ProfileScreen(),
              },
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}
