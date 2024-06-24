import 'package:flutter/material.dart';
import 'package:galies/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, required this.text}) : super(key: key);
 final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
                width: double.infinity,
                height:63 ,
                child: Center(child: Text(text,style: TextStyle(color: backColor),)),
                decoration: BoxDecoration(color:primaryColor ,borderRadius: BorderRadius.circular(16)),
              ),
    );
  }
}