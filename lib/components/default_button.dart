import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {
  final String text;
  final Color colorBG;
  final Color textColor;
  final Function press;
  const DefaultButton({
    required this.text,
    required this.textColor,
    required this.colorBG,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: colorBG,
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.20, vertical: size.height * 0.015),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () => press(),
        child: Text(
          text,
          style: TextStyle(
              fontSize: size.height * 0.035, 
              color: textColor,
              fontWeight: FontWeight.w500),
        ));
  }
}
