import 'package:clickbuster_app/goolgeauth/auth.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  final Authservices _auth = Authservices();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                '',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontFamily: "rancher",
                  fontSize: 35.0,
                  color: Colors.orangeAccent,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/ClicBUSTER.png'))),
            ),
            ListTile(
              leading: Icon(
                Icons.input,
                color: Colors.white,
              ),
              title: Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(
                Icons.verified_user,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(
                Icons.border_color,
                color: Colors.white,
              ),
              title: Text(
                'Feedback',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
