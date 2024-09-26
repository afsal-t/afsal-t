import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hello(),
  ));
}

class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello afsal"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Text("flutter", style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
