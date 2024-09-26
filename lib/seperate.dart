import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: seperate(),));
}
class seperate extends StatelessWidget {
 var name=["afsal","hiba","kunji","hibaa","hisana"];
 var color=[Colors.red,Colors.yellow,Colors.blueGrey,Colors.white10,Colors.green];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List seperate",),
      ),
      body: ListView.separated (
        itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text(name[index]),
          ),
        );
        
      },
        separatorBuilder: (context,index){
        return Divider(
          thickness: 5,
          color: Colors.yellowAccent,
        );
        }, itemCount: name.length,
          
        
    
    
    ),
    );
  }
}
