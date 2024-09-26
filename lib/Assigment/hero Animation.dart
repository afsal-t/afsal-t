import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: heroanimm(),));
}

const heroAnimationDuration = 100;

class heroanimm extends StatelessWidget {
  const heroanimm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
                 Padding(padding: EdgeInsets.all(20),
                child: Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: GestureDetector(
                      onTap: ()=> secondpageroute(context),
                      child: const Hero(tag: 'myAnimation',
                        child: CircleAvatar(backgroundImage:
                        AssetImage('assets/image/india-gate-delhi-260nw-1140074150.webp'),),),
                    ),
                    title: Text("Afsal"),
                    subtitle: Text("kerala"),
                    trailing: Icon(Icons.visibility),
                  ),
                ),),
            ],


    ),

    );
  }
  void secondpageroute(
      BuildContext context
      ){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Scaffold(
      appBar: AppBar(
        title: const Text("MY ID"),
        
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Hero(tag: 'myAnimation',
          child: Image(image: AssetImage(
              "assets/image/india-gate-delhi-260nw-1140074150.webp" ),),),
      ),
    )));
  }
}

