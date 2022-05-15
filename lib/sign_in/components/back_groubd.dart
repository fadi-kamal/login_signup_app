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
      children: [
        Positioned(
            top: size.height * -0.085,
            left: size.width * 0.2,
            child: Image.asset(
              "assets/icons/pinkLine2.png",
            )),
        Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            child: Image.asset("assets/images/blueDot-1.png")),
        Positioned(
            right: 10,
            top: size.height * 0.35,
            child: Image.asset(
              "assets/icons/pinkCircly2.png",
              width: size.width * 0.13,
            )),
        Positioned(
            left: 0,
            top: size.height * 0.45,
            child: Image.asset("assets/icons/pinkCircly.png")),
        Positioned(
            right: size.width * -0.1,
            bottom: size.height * 0.35,
            child: Image.asset("assets/icons/greenLine.png")),
        Positioned(
          bottom: size.height * 0.0,
          child: SvgPicture.asset(
            "assets/icons/whiteBackGround.svg",
            color: kTextLightColor.withOpacity(0.4),
            width: size.width,
            height: size.height * 0.4,
            clipBehavior: Clip.none,
          ),
        ),
        Positioned(
          bottom: size.height * 0.3,
          left: size.width * 0.2,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
        Positioned(
            bottom: size.height * -0.09,
            left: size.width * -0.48,
            child: Image.asset(
              "assets/icons/pinkLine2.png",
              width: size.width,
            )),
        Positioned(
            bottom: 0,
            child: Image.asset(
              "assets/icons/waveDown-1.png",
              width: size.width * 1,
              fit: BoxFit.cover,
            ))
      ],
    );
  }
}
