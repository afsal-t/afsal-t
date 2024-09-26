import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: lottie(),));
}
class lottie extends StatelessWidget {
  const lottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Lottie.asset("assets/Anim/anim2.json"),

      ),
    );
  }
}
