import 'package:flutter/material.dart';
import 'package:galies/screens/forgot_password.dart';
import 'package:galies/screens/login_page.dart';
import 'package:galies/screens/register.dart';
import 'package:galies/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "RegisterPage": (context) => RegisterPage(),
        "SplashScreen": (context) => SplashScreen(),
        "LoginPage": (context) => LoginPage(),
        "ForgotPassword": (context) => ForgotPassword(),
      },
      initialRoute: "SplashScreen",
    );
  }
}
