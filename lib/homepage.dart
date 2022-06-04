import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 300.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/one.jpg'),
          AssetImage('images/two.jpg'),
          AssetImage('images/three.jpg'),
          AssetImage('images/four.jpg'),
          // AssetImage('images/screen1_5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),

    );
    return Scaffold(

      appBar: appBarMain(context),
      drawer: Drawermain(context),
      body: ListView(
          children: <Widget>[


            image_carousel,
          ]

      ),
    );

  }
}
