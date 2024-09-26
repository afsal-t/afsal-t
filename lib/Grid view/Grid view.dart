import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:  gridview(),));
}
class gridview extends StatelessWidget {
  const gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),children: [
        Container(child: Center(child: Text("1"),),color: Colors.red,),
        Container(child: Center(child: Text("2"),),color: Colors.black,),
        Container(child: Center(child: Text("3"),),color: Colors.yellowAccent,),
        Container(child: Center(child: Text("4"),),color: Colors.orange,),
        Container(child: Center(child: Text("5"),),color: Colors.white,),
        Container(child: Center(child: Text("6"),),color: Colors.purple,),
        Container(child: Center(child: Text("7"),),color: Colors.blue,)

      ],),
    );
  }
}
