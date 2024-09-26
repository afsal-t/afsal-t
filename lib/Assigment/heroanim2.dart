import 'package:flutter/material.dart';
import 'package:hero_animation/hero_animation.dart';

import 'hero Animation.dart';
void main() {
  runApp(MaterialApp(home : heroanimm(),));
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          title: 'afsal app demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,

        ),
        home: const heroanimm(),

    );
  }
}
