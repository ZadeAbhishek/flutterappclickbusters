import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:clickbuster_app/UI/passwordauth.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      dragStartBehavior: DragStartBehavior.start,
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: <Widget>[
            //All slides awill present here Manullay i have to. for Adding nre slide add new Colomn
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: InkWell(
                onTap: () {
                  print("OK tap");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget(
                              keys: 1,
                            )),
                  );
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 10,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/DSC_0508.jpg",
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ),
                      Text(
                        "Stage",
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: InkWell(
                onTap: () {
                  print("OK tap");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget(
                              keys: 2,
                            )),
                  );
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 10,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/images/img21.jpg",
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ),
                      Text(
                        "Music",
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: InkWell(
                onTap: () {
                  print("OK tap");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget(keys: 3)),
                  );
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 10,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/images/img22.jpg",
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ),
                      Text(
                        "Live",
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: InkWell(
                onTap: () {
                  print("OK tap");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget(keys: 4)),
                  );
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 10,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/images/img23.jpg",
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ),
                      Text(
                        "Shiv\nJayanti",
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: InkWell(
                onTap: () {
                  print("OK tap");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget(keys: 5)),
                  );
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 10,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/images/img24.jpg",
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ),
                      Text(
                        "Fashion\nshow",
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: InkWell(
                onTap: () {
                  print("OK tap");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget(keys: 6)),
                  );
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 10,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/DSC_0508.jpg",
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ),
                      Text(
                        "GRID 1",
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: InkWell(
                onTap: () {
                  print("OK tap");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget(
                              keys: 7,
                            )),
                  );
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 10,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/DSC_0508.jpg",
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ),
                      Text(
                        "GRID 1",
                        style: TextStyle(
                          fontFamily: "shadow",
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: InkWell(
                onTap: () {
                  print("OK tap");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget(
                              keys: 8,
                            )),
                  );
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 10,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/DSC_0508.jpg",
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ),
                      Text(
                        "GRID 1",
                        style: TextStyle(
                          fontFamily: "shadow",
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
