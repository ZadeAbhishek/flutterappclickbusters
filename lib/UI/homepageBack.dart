//import 'package:clickbuster_app/app_homepage.dart';

import 'package:clickbuster_app/UI/sideview.dart';
import 'package:clickbuster_app/UI/slidegrid.dart';
import 'package:flutter/material.dart';
import 'package:clickbuster_app/UI/tittlebar.dart';
import 'package:clickbuster_app/UI/slideshow.dart';
//mport 'package:clickbuster_app/passwordauth.dart';
//import 'package:floating_pullup_card/floating_pullup_card.dart';

class Home extends StatefulWidget {
  @override
  _BackgState createState() => _BackgState();
}

class _BackgState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      bottom: true,
      child: Scaffold(
        endDrawer: NavDrawer(),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.4,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    SlideShow(),
                    Titlebar(),
                  ],
                ),
              ),
            ),
            FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.7,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(60))),
                //color: Colors.black,
                child: Column(
                  children: <Widget>[
                    SafeArea(
                      left: true,
                      right: true,
                      top: true,
                      bottom: true,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Catagory",
                          style: TextStyle(
                            fontFamily: "rancher",
                            color: Colors.white60,
                            fontSize: 50.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Grid(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // backgroundColor: Colors.red,
      ),
    );
  }
}
