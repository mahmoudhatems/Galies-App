import 'package:flutter/material.dart';
import 'package:galies/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backColor,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Home Page ",))
        ],
      ),

    );
  }
}