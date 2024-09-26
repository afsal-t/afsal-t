import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home:  staggerd(),));
}
class staggerd extends StatelessWidget {
  const staggerd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing:10,
          children: [
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
              color: Colors.yellowAccent,
              child: Center(
                  child: Text("34")),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount: 2, child: Container(
              color: Colors.redAccent,
              child: Text("35"),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 3, child: Container(
              color: Colors.orange,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("37"),
                  Center(child: Icon(Icons.accessibility_new)),
                ],
              ),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 3, child: Container(
              color: Colors.blue,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("38"),
                  Center(child: Icon(Icons.access_time_filled_rounded)),
                ],
              ),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount: 1, child: Container(
              color: Colors.green,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("39"),
                  Center(child: Icon(Icons.access_alarms_sharp)),
                ],
              ),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
              color: Colors.blueGrey,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("40"),
                  Icon(Icons.ac_unit),
                ],
              ),
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 3, child: Container(
              color: Colors.greenAccent,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("afsal"),
                  Center(child: Icon(Icons.account_balance)),
                ],
              ),
            )),





          ],),
      ),

    );
  }
}
