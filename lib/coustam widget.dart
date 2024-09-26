import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class coustamwid extends StatelessWidget {
  final Image img;
  final Text title;
  final Text subtitle;
  VoidCallback onpress;
  coustamwid({super.key, required this.img,required this.title,required this.subtitle,required this.onpress})


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: ListTile(
          leading: img,
          title: title,
          subtitle: subtitle,
          trailing: img,
          onTap: onpress,
        ),
      ),
    );
  }

}




