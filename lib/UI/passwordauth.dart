import 'package:clickbuster_app/UI/customtitlebar.dart';
//import 'package:clickbuster_app/UI/photos.dart';
//import 'package:clickbuster_app/firebasestorage/grid.dart';
import 'package:clickbuster_app/firebasestorage/gridview2.dart';
import 'package:flutter/material.dart';
import 'package:clickbuster_app/UI/textaccept.dart';
//import 'package:flutter/services.dart';
//import 'package:clickbuster_app/textaccept.dart';

/// This Widget is the main application widget.

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatefulWidget {
  final keys;
  @override
  const MyStatelessWidget({Key key, this.keys}) : super(key: key);

  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  var check;
  var textlogin;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                height: MediaQuery.of(context).padding.top * 120,
                width: MediaQuery.of(context).padding.top * 120,
              ),
            ),
            Center(
              child: Card(
                color: Colors.black38,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.keyboard,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Password Auth',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Password Provided by team Clickbusters',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        TEXT(),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          onPressed: () {
                            /* ... */
                            check = lbutton(widget.keys);

                            print(check);
                            print(widget.keys);
                            int x = widget.keys;
                            if (check) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        new ImagesScreenB(null, x),
                                  ));
                            } else {
                              ListTile(
                                title: Text(
                                  "Retry",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomTitlebar(),
          ],
        ),
      ),
    );
  }
}
