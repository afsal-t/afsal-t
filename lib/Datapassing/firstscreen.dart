import 'package:afsalflutter/Datapassing/dammy%20product.dart';
import 'package:afsalflutter/Datapassing/second%20screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: dammy(),routes: {
    "secondscreen":(context)=>secondscreen(),
  },));
}
class dammy extends StatefulWidget {
  const dammy({super.key});

  @override
  State<dammy> createState() => _dammyState();
}

class _dammyState extends State<dammy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dammyproduct.map((product)=>GestureDetector(
          child: Column(
            children: [
              Text(product["name"]),
              Image(image: AssetImage("image")),
            ],
          ),
          onTap: ()=>getproduct(context,product["id"]),
        )).toList(),
      ),
    );
  }
  }

 void getproduct(BuildContext context, product) {
    Navigator.pushNamed(context, "secondscreen",arguments: product);
 }

