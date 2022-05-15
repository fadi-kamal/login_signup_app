import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup_app/constarts.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    Key? key,
 
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none, fit: StackFit.expand, children: [
      Positioned(
          top: size.height * -0.085,
          left: size.width * 0.2,
          child: Image.asset(
            "assets/icons/pinkLine2.png",
          )),
      Container(
          margin: EdgeInsets.only(bottom: size.height * 0.3),
          child: Image.asset("assets/images/DotBlueuppng-1.png")),
      Positioned(
          right: size.width * 0.5,
          top: size.height * 0.55,
          child: Image.asset(
            "assets/icons/pinkCircly2.png",
            width: size.width * 0.13,
          )),
      Positioned(
        right: size.width * 0.1,
        top: size.height * 0.45,
        child: Image.asset("assets/icons/greenLine.png"),
        width: size.width * 0.2,
      ),
      Positioned(
          bottom: size.height * 0.03,
          child: SvgPicture.asset(
            "assets/icons/whiteBackGround.svg",
            color: kTextLightColor.withOpacity(0.5),
            width: size.width,
          )),
      Positioned(
          bottom: size.height * 0.0,
          child: SvgPicture.asset(
            "assets/icons/whiteBackGround.svg",
            color: kPrimaryColor.withOpacity(0.9),
            width: size.width,
          )),
      Positioned(
          bottom: -10,
          child: SvgPicture.asset(
            "assets/icons/waveDown-1.svg",
            color: kBGDownColor,
            width: size.width * 1,
            
          )),
      Container(
        margin: EdgeInsets.only(top: size.height * 0.55),
        padding: EdgeInsets.all(size.width * 0.05),
        child: Image.asset(
          "assets/images/whiteDot-2.png",
        ),
      ),
     
    Positioned(
        bottom: size.height * 0.02,
        left: size.width * 0.2,
        child: Image.asset(
          "assets/icons/pinkLine2.png",
          width: size.width * 0.15,
          height: size.height *  0.1,
        )),
        Positioned(
            bottom: size.width * 0.2,
            right: size.width * 0.05,
          child: Container(
            width: size.width * 0.12,
            height: size.height * 0.07,
            decoration: BoxDecoration(
              color: kBGDownColor,
              borderRadius: BorderRadius.circular(50)
            ),
          )
            ),
    ]);
  }
}
