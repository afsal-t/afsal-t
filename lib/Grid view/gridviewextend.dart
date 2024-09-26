import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: extents(),));
}
class extents extends StatelessWidget {
  var text=["My Profile","Book a cab","Booking Schedule","Track your Cab","Help and Feedback","Call to Transport","Settings","Logout"];
  var iconss=[Icons.contact_page_sharp,Icons.car_repair_outlined,Icons.calendar_today,Icons.location_on,Icons.question_mark_outlined,Icons.call,Icons.settings,Icons.logout];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 100,
        children:
          List.generate(iconss.length, (index){
            return Card(
              child: Column(
                children: [Icon(iconss[index]),
                Text(text[index])
                ],
              ),
            );
          })
        ,

      ),

    );
  }
}
