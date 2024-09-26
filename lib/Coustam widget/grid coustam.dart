import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: gridcoustam(),));
}
class gridcoustam extends StatelessWidget {
  const gridcoustam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(color: Colors.green,
          child: Column(
          children: [
            Container(
              child: Text("afsal"),
            ),
            Container(),

          ],
        )
    )
      ),
    );
  }
}
