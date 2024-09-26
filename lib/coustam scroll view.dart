import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: couustamscroll(),
  ));
}

class couustamscroll extends StatelessWidget {


  var icon=[Icons.access_alarm,Icons.account_balance,Icons.abc_rounded,Icons.brush,Icons.read_more];
  var text=["afsal","wayanad","graduated","balance","read more"];
  var name = [
    "John Judah",
    "Bisola Akanbi",
    "Eghosa Iku",
    "Andrew Ndebuisi",
    "Arinze Dayo",
    "Wakara Zimbu",
    "Emaechi Chinedu",
    "Osaretin lgbinomwanhia"
  ];
  var number = [
    "2348031980943",
    "2348031980943",
    "2348031980943",
    "234803198094",
    "4534289767609",
    "54329876209",
    "671209543678",
    "097634869652",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          title: Text("Facebook"),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.accessibility_new),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.call_end),
            ),
          ],
          expandedHeight: 140,
          // coustam height adjusting of appbar

          bottom: AppBar(
            title: Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "search",
                  prefixIcon: Icon(Icons.ac_unit),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 50,
            child: Text("Afsal"),
            color: Colors.yellowAccent,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Card(
                color: Colors.yellowAccent,
                child: ListTile(
                  title: Text(name[index]),
                  subtitle: Text(number[index]),
                ),
              );
            },
            childCount: name.length,
          ),
        ),
        SliverGrid(delegate: SliverChildBuilderDelegate(
            (context,index){
              return Card(
              child: Column(
                children: [
                  Text(text[index]),
                  Icon(icon[index]),
                ],
              ),

              );
            },
          childCount: text.length,
        ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: text.length)),
      ]),
    );
  }
}
