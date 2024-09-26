import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: botoom(),));
}
class botoom extends StatefulWidget {
  const botoom({super.key});

  @override
  State<botoom> createState() => _botoomState();
}

class _botoomState extends State<botoom> {

  int index=1;
  var screen=[Text("profile"),Text("Chats"),Text("Calls"),Text("Contacts")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
        actions: [
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("search",)),
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Invite")),
              PopupMenuItem(child: Text("Logout")),



            ];
          })
        ],
        backgroundColor: Colors.yellowAccent,),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.orange,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.yellowAccent,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "profile",backgroundColor: Colors.yellowAccent),
          BottomNavigationBarItem(icon: Icon(Icons.chat,),label: "Chat",backgroundColor: Colors.yellowAccent),
          BottomNavigationBarItem(icon: Icon(Icons.call,),label: "Call",backgroundColor: Colors.yellowAccent),
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home",backgroundColor: Colors.yellowAccent),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
    child: Icon(Icons.call),
    backgroundColor: Colors.green,
    foregroundColor: CupertinoColors.white,
      ),
      body: Center(child: screen[index],),
    );
  }
}
