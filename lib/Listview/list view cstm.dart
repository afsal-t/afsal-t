import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: coustam(),));
}
class coustam extends StatelessWidget {

 var  name=["John Judah","Bisola Akanbi","Eghosa Iku","Andrew Ndebuisi","Arinze Dayo","Wakara Zimbu","Emaechi Chinedu","Osaretin lgbinomwanhia"];
  var number=["2348031980943","2348031980943","2348031980943","234803198094","4534289767609","54329876209","671209543678","097634869652",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
        List.generate(name.length, (index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.yellowAccent,),
              title: Text(name[index]),
              subtitle: Text(number[index]),
            ),
            );
        }

      )
      ),
    ),
    );
  }
}
