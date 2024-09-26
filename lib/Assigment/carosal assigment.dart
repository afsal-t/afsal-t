import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: asmtcrsl(),
  ));
}
class asmtcrsl extends StatefulWidget {
  const asmtcrsl({super.key});

  @override
  State<asmtcrsl> createState() => _asmtcrslState();
}

class _asmtcrslState extends State<asmtcrsl> {
  var index=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold( body: CustomScrollView(slivers: [
      SliverAppBar(backgroundColor: Colors.green,
        floating: true,
        pinned: true,
        title: Text("FARMERS FRESH ZONE",style: TextStyle(color: Colors.white,fontSize: 18,
          fontWeight: FontWeight.bold,backgroundColor: Colors.green,

        ),),actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.location_on),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text("kochi"),
          ),
        ],


        bottom:AppBar(backgroundColor: Colors.green,
          title:Container(
            color: Colors.white,
            height: 35,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for vegitables and fruits...",
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),


        ),
      ),SliverToBoxAdapter(
        child:Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("FRUITS"),
              Text("VEGITABLES"),
              Text("EXOTIC ITEMS"),
            ],
          ),),
      ),SliverToBoxAdapter(
        child:
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image(image: AssetImage("assets/images/reading.jpg"),),) ,

      ),
      SliverToBoxAdapter(
        child:Padding(
          padding: const EdgeInsets.only(top: 70),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.timer),
              Icon(Icons.tram_sharp),
              Icon(Icons.person,),
            ],
          ),
        ),

      ),SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage("assets/images/veg 2.jpg"),height: 200,width: 160,),
              Image(image: AssetImage("assets/images/veg 2.jpg"),height: 210,width: 160,),
              Image(image: AssetImage("assets/images/veg 2.jpg"),height: 250,width: 160,),

            ],
          ),
        ),
      )
    ]

    ),bottomNavigationBar: BottomNavigationBar(
      currentIndex: index,
      onTap:(tapindex){
        setState(() {
          index=tapindex;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green,),label:"home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.green,),label: "cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.green,),label: "account"),
      ],

    ),
    );

  }
}