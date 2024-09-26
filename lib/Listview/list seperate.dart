import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class example extends StatelessWidget {
  var name=["List Item 0","List Item 1","List Item 2","List Item 3","List Item 4","List Item 5","List Item 6","List Item 7","List Item 8","List Item 9","List Item 10","List Item11","List Item 12","List Item 13","List Item 14","List Item 15"];
  var liss=["Separator 0","Separator 1","Separator 2","Separator 3","Separator 4","Separator 5","Separator 6","Separator 7","Separator 8","Separator 9","Separator 10","Separator 11","Separator 12","Separator 13","Separator 14","Separator 15"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeGreen,
        title: Text("ListView.Seperated()"),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Card(child: ListTile(title: Text(name[index]),

        ));
      },

          separatorBuilder: (context,index){ return
            Card(
                color: Colors.grey,
                child: Container(height: 30,width: 30,

                    child: Text(liss[index],)));},

          itemCount: name.length),

    );

  }
}
