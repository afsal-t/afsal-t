import 'package:flutter/material.dart';

import 'dammy product.dart';
void main(){
  runApp(MaterialApp(home: secondscreen(),));
}
class secondscreen extends StatefulWidget {


  @override
  State<secondscreen> createState() => _State();
}

class _State extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=dammyproduct.firstWhere((product)=>product["id"]);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("${data["name"]}"),
            Image(image: AssetImage("${data["image"]}")),
            Text("${data["rate"]}"),
            Text("${data["description"]}"),
          ],
        ),
      ),

    );
  }
}
