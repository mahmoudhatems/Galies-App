import 'package:flutter/material.dart';
import 'package:galies/constants.dart';

class CoustomButton extends StatelessWidget {
 const CoustomButton(
      {super.key, this.onTap,this.fontFamily,
      required this.text,
      required this.buttonBorderColor,
      required this.buttonColor,
      required this.textColor});

  final VoidCallback? onTap;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Color buttonBorderColor;
 final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(color: buttonBorderColor),
            color: buttonColor,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
          Center(
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 16,fontFamily: fontFamily),
            ),
          ),
        ]),
      ),
    );
  }
}
