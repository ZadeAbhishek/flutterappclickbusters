import 'package:flutter/material.dart';

var result = "";
bool passcheck;

// ignore: non_constant_identifier_names

class TEXT extends StatefulWidget {
  @override
  _TEXTState createState() => _TEXTState();
}

class _TEXTState extends State<TEXT> {
  final myController = TextEditingController();

  bool _validate = false;
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: TextField(
        obscureText: true,
        maxLength: 6,
        textAlign: TextAlign.center,
        cursorColor: Colors.red,
        controller: myController,
        decoration: new InputDecoration(
          errorText: _validate ? 'please give valid password' : null,
          border: OutlineInputBorder(),
          hintText: 'TYPE HERE',
          hintStyle:
              TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
        ),
        onChanged: (String password) {
          setState(() {
            print("Second text field: ${myController.text}");
            result = myController.text;
            var pass = 'abhi8';
            result != pass ? _validate = true : _validate = false;
            //passcheck = check(result);
            //print(passcheck);
          });
        },
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

bool lbutton(int keys) {
  if (check(result, keys)) {
    return true;
  } else {
    return false;
  }
}

bool check(String str, int keys) {
  switch (keys) {
    case 1:
      var passwords = "pass1";
      if (str == passwords) {
        return true;
      } else {
        return false;
      }
      break;
    case 2:
      var passwords = "pass2";
      if (str == passwords) {
        return true;
      } else {
        return false;
      }
      break;
    case 3:
      var passwords = "pass3";
      if (str == passwords) {
        return true;
      } else {
        return false;
      }
      break;
    case 4:
      var passwords = "pass4";
      if (str == passwords) {
        return true;
      } else {
        return false;
      }
      break;
    case 5:
      var passwords = "pass5";
      if (str == passwords) {
        return true;
      } else {
        return false;
      }
      break;
    case 6:
      var passwords = "abhi8";
      if (str == passwords) {
        return true;
      } else {
        return false;
      }
      break;
    case 7:
      var passwords = "abhi8";
      if (str == passwords) {
        return true;
      } else {
        return false;
      }
      break;
    case 8:
      var passwords = "abhi8";
      if (str == passwords) {
        return true;
      } else {
        return false;
      }
      break;
    default:
      return false;
  }
}
