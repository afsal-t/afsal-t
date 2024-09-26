import 'package:afsalflutter/simple%20contact%20list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Grid view/Grid view.dart';

void main(){
  runApp(MaterialApp(home: namedroute(),routes: {
    "grid": (context)=>gridview(),
    "list": (context)=>contactlist(),
  },));
}
class namedroute extends StatelessWidget {
  const namedroute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 75),
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "grid");
              }, child: Text("screen1")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "list");
            }, child: Text("screen2")),
          ),
        ],
      ),
    );
  }
}
