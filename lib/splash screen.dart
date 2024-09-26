import 'dart:async';

import 'package:afsalflutter/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: splashscreen(),));
}

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initstate(){
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()) );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
               Image(image: AssetImage("assets/image/apple.png"),
     height: 100,
         width: 100,
         )
         ],
       ),

          ),

    );
  }

}

