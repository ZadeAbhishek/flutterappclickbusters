import 'package:clickbuster_app/UI/sideview.dart';
import 'package:flutter/material.dart';

final GlobalKey _scaffoldKey = new GlobalKey();

class Titlebar extends StatefulWidget {
  @override
  _TitlebarState createState() => _TitlebarState();
}

class _TitlebarState extends State<Titlebar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        endDrawer: NavDrawer(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
          child: Container(
            color: Colors.black38,
            //padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Text(
                  "ClickBusterS",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: "rancher",
                    fontSize: 35.0,
                    color: Colors.orangeAccent,
                  ),
                ),
                Spacer(),
                Text(
                  "SLide",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "rancher",
                    fontSize: 35.0,
                    color: Colors.orangeAccent,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_left,
                    color: Colors.orangeAccent,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
