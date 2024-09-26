import 'package:afsalflutter/date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: misbisible(),));
}
class misbisible extends StatefulWidget {
  const misbisible({super.key});

  @override
  State<misbisible> createState() => _misbisibleState();
}

class _misbisibleState extends State<misbisible> {
  var date=["date1","date2","date3","date4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Dismissible(background: Container(height: 140,width:double.infinity,color: Colors.greenAccent,),
            secondaryBackground: Container(color: Colors.redAccent,),

            key: ValueKey(date),


            child: Card(
              child: Container(color: Colors.yellowAccent,
                  child: Text(date[index])),
            ));
      },
      itemCount: date.length,),

    );

  }

}
