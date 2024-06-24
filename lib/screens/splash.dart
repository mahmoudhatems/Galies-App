import 'dart:async';
import 'package:flutter/material.dart';
import 'package:galies/constants.dart';
import 'package:galies/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   final splashDuration = 5;

  // This function navigates from splash screen to the home screen after splashDuration time
  void navigateToHomeScreen() {
    Timer(Duration(seconds: splashDuration), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) =>OnboardingPage()),
      );
    });
  }
  @override
  void initState() {
    super.initState();
    // Call the navigateToHomeScreen function when the widget is initialized
    navigateToHomeScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Column(mainAxisAlignment:   MainAxisAlignment.center,
        children: [
       Row(mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset("assets/images/splash/splashimg.png",width: 170,),
         ],
       ),
       SizedBox(height: 10,),

       Text("جليس",style:TextStyle(color: primaryColor,fontSize: 48,fontFamily:'Noto Sans Arabic'),)
      
      ]),
    );
  }
}