import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: mywork(),));
}
class mywork extends StatelessWidget {
  const mywork({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
       appBar: AppBar(backgroundColor: Colors.blue,
       title: Text("Facebook"),
       bottom: ButtonsTabBar(
         tabs: [
           Icon(Icons.cyclone),
           Icon(Icons.accessibility_new),
           Icon(Icons.radar),
           Icon(Icons.access_time_filled),
         ],
       ),),


            ),
          );

  }
}
