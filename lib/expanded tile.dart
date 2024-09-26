import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: expandtile(),));
}
class expandtile extends StatelessWidget {
  const expandtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(title: Text("Light color"),
          backgroundColor: Colors.lime[100],
          children: [
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.limeAccent,),),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.green,),),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.redAccent,),),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.lightGreen,),),
          ],

          ),

          ExpansionTile(title: Text("Dark color"),
            backgroundColor: Colors.pink,
            children: [
            ListTile(leading: CircleAvatar(backgroundColor: Colors.deepOrange,),),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),),
            ],

          ),
        ],
      ),
    );
  }
}
