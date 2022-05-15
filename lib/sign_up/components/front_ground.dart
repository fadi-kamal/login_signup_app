import 'package:flutter/material.dart';
import 'package:login_signup_app/components/account_text.dart';
import 'package:login_signup_app/components/default_button.dart';
import 'package:login_signup_app/constarts.dart';
import 'package:login_signup_app/sign_in/components/text_image_bg.dart';
import 'package:login_signup_app/sign_up/components/text_from.dart';


class FrontGround extends StatelessWidget {
  const FrontGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextImageBG(
              text: "Sign Up", 
              image: "assets/images/signupImage.png",
              imageWidth: 0.65,
              
              ),
          TextFrom(),
          DefaultButton(
              text: "Sign Up",
              textColor: Colors.black,
              colorBG: Colors.white,
              press: () {}),
              SizedBox(height: 25 ,),
          AccountText(bol: false, press: ()=> Navigator.of(context).pushNamed("signIn"), textcolor: kTextLightColor,),
        ],
      ),
    );
  }
}

