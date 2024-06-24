import 'package:flutter/material.dart';
import 'package:galies/constants.dart';
import 'package:galies/widgets/Coustom_password_text.dart';
import 'package:galies/widgets/coustom_text_field.dart';
import 'package:galies/widgets/custom_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: primaryColor,
              )),
          title: const Text("انشاء حساب",
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
              const Padding(
                padding:
                    EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
                child: Row(
                  children: [
                    Text("أهلًا بك فى",
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 24,
                            fontFamily: 'Noto Sans Arabic')),
                    Text(" جليس .",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Noto Sans Arabic'))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text("الإسم",
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
                padding:  EdgeInsets.all(12),
                child:  Row(
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
                padding:  EdgeInsets.all(12),
                child:  Row(
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
              SizedBox(
                height: 20,
              ),
               CoustomButton(
              onTap: () {
               
              },
              text: "انشاء حساب",
              textColor: backColor,
              buttonBorderColor: primaryColor,
              buttonColor: primaryColor,
            ),



            ],
          ),
        ),
      ),
    );
  }
}
