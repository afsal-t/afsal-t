import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stack(),));
}
class stack extends StatelessWidget {
  const stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
              color: Colors.red,
              height: double.infinity,
              width: double.infinity,
            ),
          Positioned(height: 200,width: 200,top: 50,left: 150,
            child: Center(
              child: Container(
                color: Colors.green,
              ),
            ),

          ),
          Center(
            child: Container(
              color: Colors.yellowAccent[100],
              height: 300,
              width: double.infinity,
            ),
          ),

        ],
      ),
    );
  }
}
