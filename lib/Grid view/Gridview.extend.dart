import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridviewextent(),
  ));
}
class gridviewextent extends StatelessWidget {
  const gridviewextent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:200 ,mainAxisSpacing:10,crossAxisSpacing: 10 ),
        children: [
          Container(
            child: Center(child: Text("1"),),color: Colors.white,),
          Container(
            child: Center(child: Text("2"),),color: Colors.brown,),
          Container(
            child: Center(child: Text("3"),),color: Colors.blueGrey,),
          Container(
            child: Center(child: Text("4"),),color: Colors.blue,),
          Container(
            child: Center(child: Text("5"),),color: Colors.green,),
          Container(
            child: Center(child: Text("6"),),color: Colors.greenAccent,),



        ],),




    );
  }
}
