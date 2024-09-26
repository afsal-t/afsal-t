import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: shopping1(),));
}

class shopping1 extends StatefulWidget {
  const shopping1({super.key});

  @override
  State<shopping1> createState() => _shopping1State();
}

class _shopping1State extends State<shopping1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Store",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          ),
          actions: [
          Icon(Icons.shopping_cart),
      ],
      ),

      drawer: Drawer(
      child: ListView(
        children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text("Profile"),
      ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Cart"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          ),
      ],
      ),


    ),
body: Padding(
            padding: const EdgeInsets.only(),
            child: Container(color: Colors.white,
child: Column(
  children: [
    TextField(
        decoration:
         InputDecoration(
          hintText: "Search",
          label: Icon(Icons.search),
          suffixIcon: Icon(Icons.filter_list),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(3),
      topRight: Radius.circular(3),
    ),
  ),
      ),
           ),

      ],
    )
  ),





),




      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded,color: Colors.blueGrey),label: "box",),
          BottomNavigationBarItem(icon: Icon(Icons.alarm_add,color: Colors.blueGrey,),label: "offers"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.blueGrey,),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded,color: Colors.blueGrey,),label: "whislist"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.blueGrey,),label: "profile"),
        ],
      ),
    );
  }
}
