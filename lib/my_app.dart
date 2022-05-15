import 'package:flutter/material.dart';
import 'package:login_signup_app/sign_in/sign_in_screen.dart';
import 'package:login_signup_app/sign_up/sign_up_screen.dart';
import 'package:login_signup_app/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white
        )
      ),
      routes: {
        "signIn" :(context) =>  SignInScreen(),
        "signUp" :(context) =>  SignUpScreen()
      },
      home: SplashScreen(),
    );
  }
}