import 'package:afsalflutter/Assigment/whatsapp%20chat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: whatsappuii(),
  ));
}

class whatsappuii extends StatefulWidget {
  const whatsappuii({super.key});

  @override
  State<whatsappuii> createState() => _whatsappuiiState();
}

class _whatsappuiiState extends State<whatsappuii> {
  var index = 0;
  var screen = [
    chatss(),
    Text("screen"),
    Text("chats"),
    Text("calls"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black54,
        title: Text(
          "Whatsapp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(Icons.camera_alt),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("New group")),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linked device")),
              PopupMenuItem(child: Text("payments")),
              PopupMenuItem(child: Text("settings")),
            ];
          })
        ],
      ),
      body:Center(child: screen[index],),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Chats",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.update),
              label: "Updates",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: "Communities",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
              ),
              label: "Calls",
              backgroundColor: Colors.green),
        ],


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.green,
        ),
      ),
    );
  }
}
