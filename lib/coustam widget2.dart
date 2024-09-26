import 'package:flutter/material.dart';

import 'clipper widget.dart';
import 'coustam widget.dart';

void main(){
  runApp(MaterialApp(home: cutmeg(),));
}

class cutmeg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        child: coustamwid(img: Image(image: AssetImage("assets/image/new york.jpg"),), title: Text("data"), subtitle: Text("Hello"), onpress: () { 
          Navigator.push(context, MaterialPageRoute(builder: (context)=>clipper()));
        },),
      ),
    );
  }
}
