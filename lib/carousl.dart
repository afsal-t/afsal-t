import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: carosl(),));
}
class carosl extends StatefulWidget {
  const carosl({super.key});

  @override
  State<carosl> createState() => _caroslState();
}

class _caroslState extends State<carosl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
            items: [
              Image(image: AssetImage("assets/image/new york.jpg")),
              Image(image: AssetImage("assets/image/finland.jpg")),
              Image(image: AssetImage("assets/image/london.jpg")),
              Image(image: AssetImage("assets/image/india-gate-delhi-260nw-1140074150.webp")),

            ],
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            )
        ),
      ),
    );
  }
}
