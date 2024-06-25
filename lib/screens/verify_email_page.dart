import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:galies/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';
import '../constants.dart';

class VerifyEmail extends StatefulWidget {
  VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final defualtPinTheme = PinTheme(
      width: 54,
      height: 54,
      textStyle: TextStyle(fontSize: 16, color: txtsecondarycolor),
      decoration: BoxDecoration(
          color:Color(0xffFEF7FF) ,
          borderRadius: BorderRadius.circular(8),
          boxShadow:  [
        BoxShadow(
          color: Colors.black26, // Shadow color
          blurRadius: 4,         // Shadow blur radius
          offset: Offset(0, 4,), 
          
           // Shadow offset
        ),
         BoxShadow(
          color: Colors.black26, // Shadow color
          blurRadius: 0,         // Shadow blur radius
          offset: Offset(0, 0,), 
          
           // Shadow offset
        ),
      ],
          border: Border.all(color: Colors.transparent)));

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
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
                  ],
                ),
              ),
              Pinput(
                length: 5,
                autofocus: true,
                defaultPinTheme: defualtPinTheme,
                focusedPinTheme: defualtPinTheme.copyWith(
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
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
