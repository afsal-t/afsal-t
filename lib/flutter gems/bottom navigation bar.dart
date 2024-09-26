import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

void main(){
  runApp(MaterialApp(home: animated(),));
}
class animated extends StatelessWidget {
  const animated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.yellow,
        items: [

        BottomNavyBarItem(icon: Icon(Icons.settings), title: Text("settings")),
          BottomNavyBarItem(icon: Icon(Icons.chat), title: Text("Chat")),
          BottomNavyBarItem(icon: Icon(Icons.contact_page_sharp), title: Text("contacts")),
      ], onItemSelected: (int value) {  },



      ),
    );
  }
}
