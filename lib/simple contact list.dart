import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: contactlist(),
  ));
}
class contactlist extends StatelessWidget {
  var name=["John Judah","Bisola Akanbi","Eghosa Iku","Andrew Ndebuisi","Arinze Dayo","Wakara Zimbu","Emaechi Chinedu","Osaretin lgbinomwanhia"];
  var number=["2348031980943","2348031980943","2348031980943","234803198094","4534289767609","54329876209","671209543678","097634869652",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple contact list",),
      backgroundColor: Colors.blue,),
      backgroundColor: Colors.white,
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: const CircleAvatar (backgroundColor: Colors.blueGrey,
              radius: 20,
              child: Icon(Icons.person),
            ),
            title: Text(name[index]),
            subtitle: Text(number[index]),
            trailing: Icon(Icons.arrow_forward_ios),

          ),
        );

      },
        itemCount:name.length ,
      ),
    );
  }
}