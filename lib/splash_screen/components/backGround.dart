import 'package:flutter/material.dart';
import 'package:login_signup_app/constarts.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: kPrimaryColor,
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: size.width * -0.17,
              left: size.width * 0.25,
              child: Image.asset(
                "assets/icons/pinkLine2.png",
                width: size.width * 0.27,
                height: size.height * 0.15,
              )),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.29),
            child: Image.asset(
              "assets/images/whiteDot-2.png",
              fit: BoxFit.fill,
              width: size.width,
            ),
          ),
          Positioned(
              right: size.width * -0.36,
              bottom: size.height * 0.35,
              child: Image.asset(
                "assets/icons/pinkLinecopy.png",
                width: size.width,
                height: size.height * 0.1,
              )),
          Positioned(
              bottom: size.height * -0.1,
              left: size.height * -0.25,
              child: Image.asset(
                "assets/icons/whiteLine.png",
                width: size.width,
              )),
              Positioned(
                bottom: size.width * 0.32,
                right: size.width * 0.02,
              child: Container(
                width: size.width * 0.12,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  color: kBGDownColor,
                  borderRadius: BorderRadius.circular(50)
                ),
              )
                ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              "assets/icons/WhiteBGWave.png",
              width: size.width,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
   
        ],
      ),
    );
  }
}
