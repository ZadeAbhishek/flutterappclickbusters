import 'package:clickbuster_app/UI/homepageBack.dart';
import 'package:clickbuster_app/authenticate/authenticate.dart';
import 'package:clickbuster_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
