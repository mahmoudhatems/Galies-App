import 'package:flutter/material.dart';
import 'package:galies/constants.dart';
import 'package:galies/widgets/coustom_text_field.dart';
import 'package:galies/widgets/custom_button.dart';

import '../widgets/Coustom_password_text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
          title:  Text("نسيت كلمة السر ",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Noto Sans Arabic')),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: ListView(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
                child: Row(mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                          "بعد ادخالك البريد الاكترونى ستتلقى رساله بها \n              رمز التحقق الخاص بك",
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
                child: Column(  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset("assets/images/Forgot password-bro 1.png"),
                    Row(
                      children: [
                        Text("البريد الإلكترونى",
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Noto Sans Arabic'))
                      ],
                    ),
                  ],
                ),
              ),
              CustomTextField(
                mycontroller: TextEditingController(),
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
