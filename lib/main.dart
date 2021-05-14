import 'package:flutter/material.dart';
import 'package:user_profile_app_ui/screens/change_password_screen.dart';
import 'package:user_profile_app_ui/screens/login_screen.dart';
import 'package:user_profile_app_ui/screens/register_screen.dart';
import 'package:user_profile_app_ui/screens/reset_password_screen.dart';
import 'package:user_profile_app_ui/screens/start_screen.dart';
import 'package:user_profile_app_ui/screens/verification_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
