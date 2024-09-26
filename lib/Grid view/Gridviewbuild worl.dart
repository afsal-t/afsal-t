import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: gridbuildwork(),));
}
class gridbuildwork extends StatelessWidget {
 var text=["My Profile","Book a cab","Booking Schedule","Track your Cab","Help and Feedback","Call to Transport","Settings","Logout"];
var icons=[Icons.contact_page_sharp,Icons.car_repair_outlined,Icons.calendar_today,Icons.location_on,Icons.question_mark_outlined,Icons.call,Icons.settings,Icons.logout,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.orange,title: Center(child: Text("Menu")),),
body: Padding(
  padding: const EdgeInsets.all(10),
  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5), itemBuilder: (context,index){
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Card(color: Colors.white,
             elevation: 5,
             child:  Center(child: Icon(icons[index],color: Colors.orangeAccent,size: 30,)), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
           ),

            Text(text[index]),
          ],
        ),
      ),
    );
  
  },
  itemCount: 8,
  ),
)
    );
  }
}
