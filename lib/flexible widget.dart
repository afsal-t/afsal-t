import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: flexible(),));
}
class flexible extends StatelessWidget {
  const flexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.redAccent[100],
            ),
          ),
      Flexible(
        flex: 4,
        child: Container(
          color: Colors.yellowAccent[100],
        ),
      ),
      Flexible(
        flex: 2,
        child: Container(
          color: Colors.lightBlueAccent[100],
        ),
      ),
          Flexible(
            flex: 6,
            child: Container(
              color: Colors.lightGreen[100],
            ),
          ),
        ],
      ),
    );
  }
}
