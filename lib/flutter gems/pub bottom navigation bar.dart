import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: pubbottom(),));
}
class pubbottom extends StatelessWidget {
  const pubbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.yellowAccent,
        items: [

          Icon(Icons.login,),
          Icon(Icons.search),
          Icon(Icons.add),
          Icon(Icons.message),
          Icon(Icons.accessibility_new),

        ],
      ),
    );
  }
}
