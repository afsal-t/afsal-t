import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class chatss extends StatelessWidget {


  var name=["jasil","umma","hiba","shani","muhsin","Adhil","islah kanur","samad","uppa"];
  var text=["Evde","hy","Gud mrng","home","lets go","hello","fine","today","11mannikk"];
  var values=["10:32","11:08","yesterday","yesterday","yesterday","yesterday","yesterday","yesterday","yesterday"];
  var image=["assets/image/apple.png","assets/image/apple.png","assets/image/apple.png","assets/image/apple.png","assets/image/apple.png","assets/image/apple.png","assets/image/apple.png","assets/image/apple.png","assets/image/apple.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue[50],
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          color: Colors.green[100],
          child: ListTile(
            leading: const CircleAvatar (backgroundColor: Colors.blueGrey,
              radius: 20,
              child: Icon(Icons.person),
            ),
            title: Text(name[index]),
            subtitle: Text(text[index]),
            trailing: Text(values[index]),

          ),
        );
      },
        itemCount: name.length,
      ),
    );
  }
}
