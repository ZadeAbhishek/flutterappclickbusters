//import 'package:clickbuster_app/UI/passwordauth.dart';
import 'package:clickbuster_app/UI/wap.dart';
//import 'package:clickbuster_app/authenticate/authenticate.dart';
import 'package:clickbuster_app/goolgeauth/auth.dart';
import 'package:clickbuster_app/models/user.dart';
import 'package:flutter/material.dart';
//import 'package:clickbuster_app/UI/homepageBack.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Authservices().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // Start the app with the "/" named route. In this case, the app starts
        // on the FirstScreen widget.
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => Wap(),
          // When navigating to the "/second" route, build the SecondScreen widget.
        },
      ),
    );
  }
}
