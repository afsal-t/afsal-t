import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Grid view/Gridview work.dart';
import '../Grid view/gridview.builder.dart';
import '../Listview/list seperate.dart';
import '../Listview/list view builder.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner : false,
    home: tabbarr(),));
}
class tabbarr extends StatelessWidget {
  const tabbarr({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:TabBar(
          tabs: [
            Tab(child: Icon(Icons.camera_alt),),
            Tab(child: Text("Chats",style: TextStyle(fontWeight: FontWeight.bold),),),
            Tab(child: Text("Status"),),
            Tab(child: Text("Calls")
            ),

          ],),
        body: TabBarView(children: [
          Center(child: Icon(Icons.camera),),
          listbuilder(),
          work(),
          example(),
          builder(),
        ],),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
