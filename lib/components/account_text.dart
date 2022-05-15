import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AccountText extends StatelessWidget {
  bool bol = true;
  final Function press;
  final Color textcolor;
  AccountText({
    required this.bol,
    required this.press,
    required this.textcolor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.02,
        ),
        Text(
          bol ? "Don't Have An Account?" : "Alrealy Have Account!",
          style: TextStyle(
              fontSize: size.width * 0.05,
              color: textcolor.withOpacity(0.6)),
        ),
        TextButton(
            onPressed: () => press(),
            child: Text(
              bol ? "Sign Up" : "Sign In",
              style:
                  TextStyle(fontSize: size.width * 0.08, color: textcolor),
            )),
      ],
    );
  }
}
