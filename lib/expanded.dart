import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: expanded(),));
}
class expanded extends StatelessWidget {
  const expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(   //Row and column    row = vertical and column = horizontal //
        children: [
          Expanded(child: Container(color: Colors.redAccent,height: double.infinity,width: 100,),),  // All widget can use expand not only container
          Expanded(child: Container(color: Colors.greenAccent,height: double.infinity,width: 100,)),
          Expanded(child: Container(color: Colors.yellowAccent,height: double.infinity,width: 100,)),
          
        ],
      ),
    );
  }
}
