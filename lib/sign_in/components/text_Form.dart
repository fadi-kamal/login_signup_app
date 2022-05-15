import 'package:flutter/material.dart';
import 'package:login_signup_app/constarts.dart';

class TextForm extends StatefulWidget {
  TextForm({
    Key? key,
    // required this.size,
  }) : super(key: key);


  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
        child: Padding(
      padding: EdgeInsets.all(size.width * 0.06),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                hintText: "Username",
                prefixIcon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text(
                  "Username",
                  style: TextStyle(
                      color: kPrimaryColor, fontSize: size.width * 0.06),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: kPrimaryColor, width: 3)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: kPrimaryColor, width: 3))),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obs = !obs;
                    });
                  },
                  icon: Icon(
                    obs ? Icons.visibility : Icons.visibility_off,
                    color: obs ? kPrimaryColor : Colors.grey,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text(
                  "Password",
                  style: TextStyle(
                      color: kPrimaryColor, fontSize: size.width * 0.06),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: kPrimaryColor, width: 3)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: kPrimaryColor, width: 3))),
          ),
        ],
      ),
    )
    );
  }
}
