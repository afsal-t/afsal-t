import 'package:afsalflutter/Tabbar/tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: uimake(),
  ));
}

class uimake extends StatefulWidget {
  const uimake({super.key});

  @override
  State<uimake> createState() => _uimakeState();
}

class _uimakeState extends State<uimake> {
  var index = 1;
  var screen=[
    Text("Settings"),
    Text("Chat"),
    Text("Calls"),
    tabbarr()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:

      AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text("Drawer"),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("search")),
              PopupMenuItem(child: Text("invite")),
              PopupMenuItem(child: Text("settings")),
              PopupMenuItem(child: Text("logout")),
            ];
          }),
        ],

      ),
     
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Afsal"),
              accountEmail: Text("afsaltks@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/image/afsal.jpg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/afsal.jpg"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
                title: Text("Home"),
              
                
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Send"),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Inbox"),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text("Drafts"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Delete"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Settings",
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: "Chat",
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
              ),
              label: "Call",
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return ListView(
                        children: [
                          ListTile(
                            title: Text("check our website"),
                            subtitle: Text("www.customerservice.com"),
                          ),
                          ListTile(
                            title: Text("connect our team"),
                            subtitle: Text("9876453276"),
                          ),
                          ListTile(
                            title: Text("please write a feedback "),
                            subtitle: Text("@instagram"),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.verified_user),
              ),
              label: "customer service")

          // BottomNavigationBarItem(IconButton(icon:Icons(Icons.contact_page_outlined),label:"Contact"),
        ],
      ),



      body: Center(child: screen[index],),
    );
  }
}
