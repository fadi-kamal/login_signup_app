import 'package:flutter/material.dart';
import 'package:login_signup_app/components/account_text.dart';
import 'package:login_signup_app/components/default_button.dart';
import 'package:login_signup_app/constarts.dart';
import 'package:login_signup_app/sign_in/components/text_Form.dart';
import 'package:login_signup_app/sign_in/components/text_image_bg.dart';

class FrontGround extends StatelessWidget {
  const FrontGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextImageBG(
              text: "Sign In",
              image: "assets/images/loginImage-1.png",
          imageWidth:  0.48,
            ),
            TextForm(
            ),
            DefaultButton(
              text: "Sign In",
              textColor: Colors.white,
              press: () {},
              colorBG: kPrimaryColor.withOpacity(0.85),
            ),
            AccountText(
              textcolor: kPrimaryColor,
              bol: true,
              press: () => Navigator.of(context).pushNamed("signUp"),
            )
          ],
        ),
      ),
    );
  }
}