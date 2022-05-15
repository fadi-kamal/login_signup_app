import 'package:flutter/material.dart';
import 'package:login_signup_app/sign_in/components/back_groubd.dart';
import 'package:login_signup_app/sign_in/components/fornt_ground.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // color: Colors.red,
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            BackGround(),
            FrontGround()
          ],
        ),
      ),
    );
  }
}



