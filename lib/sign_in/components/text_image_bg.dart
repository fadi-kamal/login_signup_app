import 'package:flutter/material.dart';
import 'package:login_signup_app/constarts.dart';

class TextImageBG extends StatelessWidget {
  final String text, image;
  final double imageWidth;
  const TextImageBG({
    required this.text,
    required this.image,
    required this.imageWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: size.height * 0.045,
              fontWeight: FontWeight.w600,
              color: kBGDownColor),
        ),
        SizedBox(
          height: 9,
        ),
        Image.asset(
          image,
          width: size.width * imageWidth,
        ),
      ],
    );
  }
}
