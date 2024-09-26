import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stackwork(),));
}
class stackwork extends StatelessWidget {
  const stackwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ Container(
          height: 250,
          width: double.infinity,
          color: Colors.blueGrey,

      ),
      ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.search)),
        BottomNavigationBarItem(icon: Icon(Icons.co_present)),
        BottomNavigationBarItem(icon: Icon(Icons.person)),

      ],),

    );
  }
}
