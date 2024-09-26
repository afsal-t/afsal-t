import 'package:afsalflutter/Datapassing/Produc%20list.dart';
import 'package:afsalflutter/Datapassing/sccreen%202.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: screenone(),routes: { "screentwo": (context)=>screentwo(),
      }  ));
}
class screenone extends StatelessWidget {
  const screenone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      ),children: productlist.map((productlists)=>GestureDetector(
    child: Column(
    children: [
      Text(productlists["name"]),
    Image(image: AssetImage("image")),
    ],
    ),
    onTap: ()=>getproductlist(context,productlists["id"]),
      )).toList(),
    )

    );
  }

void  getproductlist(BuildContext context, productlist) {
    Navigator.pushNamed(context, "screentwo");
}
}
