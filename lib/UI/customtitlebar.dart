import 'package:flutter/material.dart';

class CustomTitlebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
            IconButton(
                icon: Icon(
                  Icons.navigate_before,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("OK CLICK ");
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
