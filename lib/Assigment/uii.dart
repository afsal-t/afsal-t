import 'package:afsalflutter/Assigment/whatsapp%20chat.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: whatsapp(),
  ));
}
class whatsapp extends StatefulWidget {
  const whatsapp({super.key});

  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  var index=0;
  var screen=[
    chatss(),
    Text("status"),
    Text("community"),
    Text("call")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.green,title: Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.bold),
      ),
          actions:[  Icon(Icons.camera_alt),
            PopupMenuButton(itemBuilder: (context){

              return[
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked message")),
                PopupMenuItem(child: Text("Starred message")),
                PopupMenuItem(child: Text("Payment")),
                PopupMenuItem(child: Text("Settings")),
              ];
            },
            ),
          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        }, items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat),backgroundColor:Colors.green,label:"Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.update),backgroundColor:Colors.green,label:"status"),
        BottomNavigationBarItem(icon: Icon(Icons.people),backgroundColor:Colors.green,label:"Community"),
        BottomNavigationBarItem(icon: Icon(Icons.call),backgroundColor:Colors.green,label:"Call"),
      ],),

      body:Container(
        child: Column(
          children: [
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: TextField(autofocus: true,
                decoration: InputDecoration(
                  hintText: "Ask Meta AI or Search..",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintStyle: TextStyle(color: Colors.black),


                ),),
            ),
            Expanded(
              child:index == 0 ? chatss() :screen[index],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
      ),
    );
  }
}