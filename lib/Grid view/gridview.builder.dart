import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: builder(),));
}

class builder extends StatelessWidget {

  var color=[Colors.red,Colors.yellowAccent,Colors.blue,Colors.purple,Colors.pinkAccent];
  var icon=[Icons.access_alarm,Icons.account_balance,Icons.abc_rounded,Icons.brush,Icons.read_more];
  var text=["afsal","wayanad","graduated","balance","read more"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
        return Container(
          color: color[index],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon[index]),
              Text(text[index]),

            ],
          ),
    );

    },
        itemCount: 4,
      ),
        );
  }
}
