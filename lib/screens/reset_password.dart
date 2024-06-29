import 'package:flutter/material.dart';
import 'package:galies/constants.dart';
import 'package:galies/widgets/Coustom_password_text.dart';
import 'package:galies/widgets/coustom_text_field.dart';
import 'package:galies/widgets/custom_button.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
          title:  const Text("كلمة السر الجديدة ",
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
                child: Row(mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                          "قم بإدخال كلمة سر مختلفة عن السابقة",
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
                child: Column(  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset("assets/images/freepik--Window--inject-65.png"),
                  SizedBox(
                    height:30,
                  ),
                    const Row(
                      children: [
                        Text("كلمة السر الجديدة",
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
              CustomPassTextField(
                mycontroller: TextEditingController(),
              ),
              const SizedBox(
                height: 20,
              ),
               const Row(
                      children: [
                        Text("تأكيد كلمة السر",
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Noto Sans Arabic'))
                      ],
                    ),
                    const SizedBox(
                height: 20,
              ),
                     CustomPassTextField(
                mycontroller: TextEditingController(),
              ),const SizedBox(
                height: 20,
              ),
              CoustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "LoginPage");
                  },
                  text: "تسجيل الدخول",
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