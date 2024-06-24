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
                    "assets/images/Audiobook-pana 1.png",
                    width: 350,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Text('.مرحبا بك فى جليس ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                          fontSize: 24,
                          fontFamily: 'Noto Sans Arabic')),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                  'استمتع بسماع الكتب بأفضل جودة صوتية\n                                           .و أداء متميز',
                  style: TextStyle(
                      color: txtsecondarycolor,
                      fontSize: 20,
                      fontFamily: 'Noto Sans Arabic')),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "RegisterPage");
              },
              child: Container(
                width: double.infinity,
                height: 63,
                child: Center(
                    child: Text(
                  "انشاء حساب ",
                  style: TextStyle(color: backColor, fontSize: 16),
                )),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(16)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "");
              },
              child: Container(
                width: double.infinity,
                height: 63,
                child: Center(
                    child: Text(
                  "تسجيل الدخول",
                  style: TextStyle(color: primaryColor, fontSize: 16),
                )),
                decoration: BoxDecoration(
                    color: backColor,
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(16)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
