import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: checkbox(),));
}
class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(checkColor: Colors.red,
            activeColor: Colors.green,
            value: ischecked,onChanged: (bool ? value){
          setState(() {
            ischecked=value!;
          });
        }),
      ),
    );
  }
}
