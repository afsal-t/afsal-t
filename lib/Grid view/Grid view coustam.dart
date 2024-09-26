import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: coustamm(),));
}
class coustamm extends StatelessWidget {
  var text=["My Profile","Book a cab","Booking Schedule","Track your Cab","Help and Feedback","Call to Transport","Settings","Logout"];
  var iconss=[Icons.contact_page_sharp,Icons.car_repair_outlined,Icons.calendar_today,Icons.location_on,Icons.question_mark_outlined,Icons.call,Icons.settings,Icons.logout];
  var color=[Colors.red,Colors.yellowAccent,Colors.blue,Colors.purple,Colors.pinkAccent,Colors.blue,Colors.deepOrange,CupertinoColors.darkBackgroundGray];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), childrenDelegate: SliverChildBuilderDelegate((context,index){
        return Card( color: color[index],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconss[index]),
              Text(text[index],style: GoogleFonts.abrilFatface(
                fontSize: 15,
              ),),
            ],
        ),

        );

    },
      childCount: iconss.length),
      )
    );
  }
}
