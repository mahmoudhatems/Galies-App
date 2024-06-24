import 'package:flutter/material.dart';
import 'package:galies/widgets/coustom_text_field.dart';
import 'package:galies/widgets/custom_button.dart';

import '../constants.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

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
          title: Text("تحقق من البريد الإلكترونى",
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
              Padding(
                padding:
                    EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
                padding: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Enter OTP-bro (1) 1.png"),
                    Row(children: const [
                      Material(
                        elevation: 5.0,
                        shadowColor: Colors.black,
                        child: TextField(),
                      )
                    ]),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CoustomButton(
                  onTap: () {},
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
