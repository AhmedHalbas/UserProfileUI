import 'package:flutter/material.dart';
import 'package:user_profile_app_ui/screens/login_screen.dart';
import 'package:user_profile_app_ui/screens/register_screen.dart';
import 'package:user_profile_app_ui/screens/start_screen.dart';

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
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
