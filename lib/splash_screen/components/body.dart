import 'package:flutter/material.dart';
import 'package:login_signup_app/splash_screen/components/backGround.dart';
import 'package:login_signup_app/splash_screen/components/image_text.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Stack(
      children: [
        BackGround(),
        ImageText()
      ],
    )));
  }
}
