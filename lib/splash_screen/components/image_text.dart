import 'package:flutter/material.dart';
import 'package:login_signup_app/constarts.dart';
import 'package:login_signup_app/components/default_button.dart';

class ImageText extends StatelessWidget {
  const ImageText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      
      children: [
        Container(
          margin: EdgeInsets.only(top: size.height * 0.08),
          child: Text(
            "Welcome",
            style: TextStyle(
                fontSize: size.height * 0.04,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.7)),
          ),
        ),
        // SizedBox(height: 5,),
        Container(
          padding: EdgeInsets.all(size.width * 0.06),
          child: Image.asset(
            "assets/images/splashimage-1.png",
          ),
        ),
        Spacer(flex: 4,),
        DefaultButton(
          text: "Sign In",
          textColor: Colors.white,
          colorBG: KDefaultButtonColor,
          press: () => Navigator.of(context).pushNamed("signIn"),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        DefaultButton(
          text: "Sign Up",
          textColor: Colors.black,
          colorBG: Colors.white,
          press: () => Navigator.of(context).pushNamed("signUp"),
        ),
        Spacer(flex: 8,),
      ],
    );
  }
}
