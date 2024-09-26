import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: work(),
  ));
}

class work extends StatelessWidget {
  const work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Grid view builder",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100, mainAxisSpacing: 10, crossAxisSpacing: 10),
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(FontAwesomeIcons.car),
                Text("Car"),
              ],
            ),
            color: Colors.lightBlueAccent,),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(FontAwesomeIcons.bicycle),
                Text("Bicycle")],
            ),
            color: Colors.lightBlueAccent,
          ),


          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(FontAwesomeIcons.ship),
                Text("Boat")],
            ),
            color: Colors.blueGrey,
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[Icon(FontAwesomeIcons.bus), Text("Bus")],
            ),

            color: Colors.green,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(FontAwesomeIcons.train),Text("Train")],
            ),
            color: Colors.green,
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(FontAwesomeIcons.walkieTalkie),Text("walk")],
            ),
            color: Colors.green,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(FontAwesomeIcons.contactBook),
                Text("Contact")],
            ),
            color: Colors.green,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.duo),Text("Duo")],
            ),
            color: Colors.green,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(FontAwesomeIcons.hourglass),Text("Hour")],
            ),
            color: Colors.pink,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(FontAwesomeIcons.mobile),Text("Mobile")],
            ),
            color: Colors.purpleAccent,
          ),
          Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(FontAwesomeIcons.message),Text("Message")],),
            color: Colors.brown,
          ),
          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(FontAwesomeIcons.key),Text("Key"),],),
          color: Colors.blueGrey,),




          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(FontAwesomeIcons.wifi),Text("Wifi")],),
          color: Colors.blueGrey,),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(FontAwesomeIcons.bluetooth),Text("Bluetooth")],),
          color: Colors.blueGrey,),


          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(FontAwesomeIcons.smile),Text("Smile")],
            ),
            color: Colors.lightBlueAccent,
          ),

        ],
      ),
    );
  }
}
