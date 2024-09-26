import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: backpress(),));
}
class backpress extends StatelessWidget {
  get context => null;

  Future<bool>showdailopop()async{
    return await showDialog(context: context, builder: (context){
      return AlertDialog(
       title: Text("Exit...."), 
        content: Text("do you want tto exit"),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop(true);
          }, child: Text("yes")),
          TextButton(onPressed: (){
            Navigator.of(context).pop(false);
          }, child: Text("No")),
        ],
      );
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: showdailopop,
      child: Scaffold(
        
      ),
    );
  }
}
