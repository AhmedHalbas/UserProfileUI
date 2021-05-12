import 'package:flutter/material.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool isObscured;

  CustomTextField({@required this.hint, @required this.isObscured});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: TextField(
          obscureText: isObscured,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kButtonPrimaryColor),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
