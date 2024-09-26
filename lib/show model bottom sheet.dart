import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: showmodel(),));
}
class showmodel extends StatelessWidget {
  const showmodel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: GestureDetector(child: Text("show"),
      onTap: ()=>show(context),),
    ),
    );
  }

  show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return ListView(
        children: [
          ListTile(title: Text("data1"),
          subtitle: Text("details1"),
          ),
          ListTile(title: Text("data2"),
            subtitle: Text("details2"),
          ),
          ListTile(title: Text("data3"),
            subtitle: Text("details3"),
          )
        ],
      );
    });
  }
}
