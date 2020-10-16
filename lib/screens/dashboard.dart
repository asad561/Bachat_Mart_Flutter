import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:practise/widets/widget_home_categories.dart';
class Dashoard extends StatefulWidget {
  @override
  _DashoardState createState() => _DashoardState();
}

class _DashoardState extends State<Dashoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            imageCarousel(context),
            WidgetCategories(

            ),
          ],
        ),
      ),
    );
  }

  Widget imageCarousel(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: new Carousel(
        overlayShadow: false,
        borderRadius: true,
        boxFit: BoxFit.none,
        autoplay: true,
        dotSize: 4.01,
        images: [
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network("url"),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network("url"),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network("url"),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network("url"),
          )
        ],
      ),
    );
  }
}
