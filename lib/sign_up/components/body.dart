import 'package:flutter/material.dart';
import 'package:login_signup_app/sign_up/components/back_ground.dart';
import 'package:login_signup_app/sign_up/components/front_ground.dart';


class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
          child: Stack(
        children: [
          BackGround(),
          FrontGround()
        ],
      )),
    );
  }
}

