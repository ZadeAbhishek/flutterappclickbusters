import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class SlideShow extends StatefulWidget {
  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      body: Slide(),
    );
  }
}

/*
ALL IMAGE IS ARE HERE FOR SLIDESHOW
*/
class Slide extends StatefulWidget {
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: 450.0,
      child: Carousel(
        boxFit: BoxFit.fitWidth,
        images: [
          // ExactAssetImage("assets/ClicBUSTER.png"),
          ExactAssetImage("assets/DSC_0285.jpg"),
          ExactAssetImage("assets/DSC_0431.jpg"),
          ExactAssetImage("assets/DSC_0508.jpg"),

          //new Image.asset("asset/renee-c-byer-paradise-california-top-100-photos-2018.jpg"),
          //new Image.asset("assets/shutterstock_518796124-1140x814.jpg"),
        ],
        dotPosition: DotPosition.bottomCenter,
        dotSize: 5,
        dotSpacing: 10.0,
        dotColor: Colors.black,
        //indicatorBgPadding: 0.0,
        dotBgColor: Colors.redAccent.withOpacity(0),
        borderRadius: false,
      ),
    );
  }
}
