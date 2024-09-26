import 'package:flutter/material.dart';

class listbuilder extends StatelessWidget {
  var firstname=["F","A","I","H","A","A","A","M","F"];
  var name=["Facebook","A10 NETWORKS INC","Intel corp","HP Inc","Advanced Micro Devices Inc","Apple Inc","Amazone com.Inc","Microsoft Corparation","Facebook"];
  var values=["7654","7865","6743","6510","5430","4329","4098","1239","6589"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view builder",style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.blue,),
      backgroundColor: Colors.blue[50],
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          color: Colors.green[100],
          child: ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue,
              child: Text(firstname[index],
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text(name[index]),
            trailing: Text("\$ ${values[index]}"),
          ),

        );
      },
        itemCount: firstname.length,
      ),
    );
  }
}
