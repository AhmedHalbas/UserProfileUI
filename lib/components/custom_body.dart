import 'package:flutter/material.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class CustomBody extends StatelessWidget {
  final Widget widget;
  final double height;

  CustomBody({@required this.widget, @required this.height});

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    return Positioned(
      height: height,
      bottom: 0,
      child: Container(
          width: scrWidth,
          decoration: boxDecoration(kSecondaryColor),
          padding: EdgeInsets.all(scrHeight * 0.02),
          child: widget),
    );
  }
}
