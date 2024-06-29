import 'package:flutter/material.dart';
import 'package:galies/constants.dart';
import 'package:galies/widgets/custom_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 20),
                  child: Image.asset(
                    "assets/images/Audiobook-pana 1.jpg",
                    width: 350,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Text('.مرحبا بك فى جليس ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                          fontSize: 24,
                          fontFamily: 'Noto Sans Arabic')),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                  'استمتع بسماع الكتب بأفضل جودة صوتية\n                                           .و أداء متميز',
                  style: TextStyle(
                      color: txtsecondarycolor,
                      fontSize: 20,
                      fontFamily: 'Noto Sans Arabic')),
            ),
            const SizedBox(
              height: 16,
            ),
            CoustomButton(
              onTap: () {
                Navigator.pushNamed(context, "RegisterPage");
              },
              text: "انشاء حساب",
              textColor: backColor,
              buttonBorderColor: primaryColor,
              buttonColor: primaryColor,
              fontFamily: 'Noto Sans Arabic'
            ),
           const SizedBox(
              height: 16,
            ),
           CoustomButton(
              onTap: () {
                Navigator.pushNamed(context, "LoginPage");
              },
              text: "تسجيل الدخول",
              textColor: primaryColor,
              buttonBorderColor: primaryColor,
              buttonColor: backColor,
              fontFamily: 'Noto Sans Arabic'
            ),
          ],
        ),
      ),
    );
  }
}
