import 'package:flutter/material.dart';
import 'package:galies/widgets/Coustom_password_text.dart';

import '../constants.dart';
import '../widgets/coustom_text_field.dart';
import '../widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          title: const Text("تسجيل الدخول",
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
                    const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
                child: Row(
                 
                 
                  children: [
                    const Text("مرحبا بعودتك  ",
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 24,
                            fontFamily: 'Noto Sans Arabic')),
                   Image.asset("assets/images/waving-hand 1.png"),
                  ],
                ),
              ),
            
              const Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text("البريد الإلكترونى",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Noto Sans Arabic'))
                  ],
                ),
              ),
              CustomTextField(
                mycontroller: TextEditingController(),
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text("كلمة السر",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Noto Sans Arabic'))
                  ],
                ),
              ),
              CustomPassTextField(
                mycontroller: TextEditingController(),
              ),
               Padding(
                 padding: const EdgeInsets.all(12),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     GestureDetector(
                      onTap:  (){
                        Navigator.pushNamed(context, "ForgotPassword");
                      },
                       child: const Text("هل نسيت كلمة السر ؟",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: fontFamily)),
                     ),
                   ],
                 ),
               ),
              const SizedBox(
                height: 6,
              ),
              CoustomButton(
                  onTap: () {
                     Navigator.pushNamed(context, "HomeScreen");
                  },
                  text: "تسجيل الدخول",
                  textColor: backColor,
                  buttonBorderColor: primaryColor,
                  buttonColor: primaryColor,
                  fontFamily: 'Noto Sans Arabic'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: ternaryColor,
                    thickness: 1,
                    height: 1,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "او",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 18,
                          fontFamily: 'Noto Sans Arabic'),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: ternaryColor,
                    thickness: 1,
                    height: 1,
                  )),
                ],
              ),
               const SizedBox(height: 10,),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: ternaryColor),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/google.png"),
                        const Center(
                          child: Text(
                            "التسجيل باستخدام حساب جوجل",
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 18,
                                fontFamily: fontFamily),
                          ),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: ternaryColor),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/facebook (1) 1.png"),
                        const Center(
                          child: Text(
                            "التسجيل باستخدام حساب فيسبوك",
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 18,
                                fontFamily: fontFamily),
                          ),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      "ليس لديك حساب ؟ ",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 14,
                          fontFamily: fontFamily),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "RegisterPage");
                    },
                    child: const Text(
                      "سجل الان",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontFamily: fontFamily),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}