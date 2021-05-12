import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:user_profile_app_ui/utils/constants.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final double height;
  CustomHeader({@required this.title, @required this.height});

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    return Container(
        height: height,
        width: scrWidth,
        decoration: boxDecoration(kPrimaryColor),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(scrHeight * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: scrWidth * 0.08,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: scrHeight * 0.05,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white, fontSize: scrWidth * 0.05),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Container(
                height: scrHeight * 0.25,
                alignment: Alignment.centerRight,
                child: Opacity(
                  opacity: 0.4,
                  child: Transform.rotate(
                    angle: -math.pi * 0.5 / 4,
                    child: Image.asset(
                      "assets/images/capture.png",
                      height: scrHeight * 0.4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
