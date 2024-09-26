import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listsepp(

  ),));
}
class listsepp extends StatelessWidget {

  var mon=["januvary","februvary","march","april","may","june","july","august","september","octobar","november","december"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
            child: Text(mon[index],));
      },


          separatorBuilder: (context,index){
        if(index %4==0){
          return Card(
            child: Container(child: Text("Advertisement"),
            color: Colors.red,),
          );
        }
        else {
          return SizedBox();
        }
        }, itemCount: 12),
    );
  }
}
