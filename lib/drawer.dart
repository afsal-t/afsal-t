import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: navigationdra(),));
}
class navigationdra extends StatelessWidget {
  const navigationdra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Center(
        child: Text("Mail")),),
      appBar: AppBar(backgroundColor:Colors.yellowAccent,
        title: Text("Drawer"),
      ),
      drawer: Drawer(backgroundColor: Colors.blue,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("AFSAL"),
                accountEmail: Text("afsaltl491@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/image/afsal.jpg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/image/afsal.jpg"),
              )
            ],
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/new york.jpg"),
            fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("Update"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Send"),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text("Drafts"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ],
        ),

      ),
    );
  }
}
