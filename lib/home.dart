import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(home : world(),

  ));
}
class world  extends StatelessWidget{
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
    );
  }

}