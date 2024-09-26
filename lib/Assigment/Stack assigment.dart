import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: stackkw(),));
}
class stackkw extends StatefulWidget {
  const stackkw({super.key});

  @override
  State<stackkw> createState() => _stackkwState();
}

class _stackkwState extends State<stackkw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Icon(Icons.list_outlined),
        actions: [
          Icon(Icons.favorite),
        ],
      ),
      body: Stack(
        children: [
          Positioned(width: 1300,
            child: Container(color: Colors.lightBlueAccent,
              child: Card(color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search for something"
                  ),
                ),
              ),
            ),
          ),
          Positioned(left: 75,top: 100,
            child: Container(
              height:90,width:100,
              color: Colors.red,
              child: Icon(Icons.hotel,),
            ),
          ),
          Positioned(left: 210,top: 100,
            child: Container(
              height:90,width:100,
              color: Colors.blue,
              child: Icon(Icons.restaurant,),
            ),
          ),
          Positioned(top: 100,left: 360,
            child: Container(
              height:90,width:100,

              color: Colors.yellow,
              child: Icon(Icons.local_cafe,),
            ),
          ),
          Positioned(top: 200,
            child: Container(
              height: 230,
              width: 1000,
              child: Image(image: AssetImage("assets/image/bed11.jpeg"),fit: BoxFit.fill,),

            ),
          ),
          Container(
            height: 360,
            width: 1000,
            child: Image(image: AssetImage("assets/image/bed11.jpeg"),fit: BoxFit.fill,),

          ),
        ],
      ),
    );
  }
}