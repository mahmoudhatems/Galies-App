import 'package:flutter/material.dart';
import 'package:galies/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';
import '../constants.dart';

class VerifyEmail extends StatelessWidget {
  VerifyEmail({super.key});

  final defualtPinTheme = PinTheme(
      width: 54,
      height: 54,
      textStyle: const TextStyle(fontSize: 16, color: txtsecondarycolor),
      decoration: BoxDecoration(
          color: const Color(0xffFEF7FF),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26, // Shadow color
              blurRadius: 4, // Shadow blur radius
              offset: Offset(
                0,
                4,
              ),

              // Shadow offset
            ),
            BoxShadow(
              color: Colors.black26, // Shadow color
              blurRadius: 0, // Shadow blur radius
              offset: Offset(
                0,
                0,
              ),

              // Shadow offset
            ),
          ],
          border: Border.all(color: Colors.transparent)));

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: primaryColor,
              )),
          title: const Text("تحقق من البريد الإلكترونى",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Noto Sans Arabic')),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
          child: ListView(
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text("قم بإدخال رمز التحقق المُرسل إليك",
                          style: TextStyle(
                              color: hintTextColor,
                              fontSize: 12,
                              fontFamily: 'Noto Sans Arabic')),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Enter OTP-bro (1) 1.png"),
                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Expanded(
                  child: Pinput(
                    length: 5,
                    autofocus: true,
                    defaultPinTheme: defualtPinTheme,
                    focusedPinTheme: defualtPinTheme.copyWith(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                                color: primaryColor, // Shadow color
                                blurRadius: 3,
                                spreadRadius: 2,
                                // Shadow blur radius
                                offset: Offset(
                                  0,
                                  4,
                                ),
                                blurStyle: BlurStyle.outer

                                // Shadow offset
                                ),
                          ]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CoustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "ResetPassword");
                  },
                  text: "ارسال",
                  textColor: backColor,
                  buttonBorderColor: primaryColor,
                  buttonColor: primaryColor,
                  fontFamily: 'Noto Sans Arabic'),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
