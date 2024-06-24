import 'package:flutter/material.dart';
import 'package:galies/constants.dart';

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
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: primaryColor,
              )),
          title: Text("انشاء حساب",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Noto Sans Arabic')),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 10, right: 10, bottom: 10),
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
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 10, right: 10, bottom: 10),
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
            TextField(
              keyboardType: TextInputType.name,
             decoration:InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              )
             ) ,
            ),
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
              TextField(
              keyboardType: TextInputType.emailAddress,
             decoration:InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              )
             ) ,
            ),
             Row(
                children: [
                  Text("كلمة السر",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Noto Sans Arabic'))
                ],
              ),
               TextField(
                textInputAction:TextInputAction.done ,
              keyboardType: TextInputType.visiblePassword,
             decoration:InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              )
             ) ,
            ),
          ],
        ),
      ),
    );
  }
}
