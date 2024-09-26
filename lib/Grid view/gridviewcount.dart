import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: count(),));
}
class count extends StatelessWidget {
  var text=["My Profile","Book a cab","Booking Schedule","Track your Cab","Help and Feedback","Call to Transport","Settings","Logout"];
  var iconss=[Icons.contact_page_sharp,Icons.car_repair_outlined,Icons.calendar_today,Icons.location_on,Icons.question_mark_outlined,Icons.call,Icons.settings,Icons.logout];
  var color=[Colors.red,Colors.yellowAccent,Colors.blue,Colors.purple,Colors.pinkAccent,Colors.blue,Colors.deepOrange,CupertinoColors.darkBackgroundGray];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,children: List.generate(iconss.length, (index){
        return Container(color: color[index],
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconss[index],color: Colors.yellowAccent,),
            Text(text[index],style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),

        );
      }),),
    );
  }
}
