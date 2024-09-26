import 'package:flutter/material.dart';

import 'Produc list.dart';

class screentwo extends StatelessWidget {
  const screentwo({super.key});

  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=productlist.firstWhere((product)=>product["id"]);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("${data["name"]}"),
            Image(image: AssetImage("${data["image"]}")),
            Text("${data["rate"]}"),
            Text("${data["description"]}"),
          ],
        ),
      ),

    );
  }
}
