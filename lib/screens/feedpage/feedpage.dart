import 'package:flutter/material.dart';

// Everything begins with main() function
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 80, left: 8, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.home, size: 50),
                  Icon(Icons.thumb_up size: 40),
                  Icon(Icons.remove_red_eye, size: 40),
                  Icon(Icons.search, size: 40),
                  Icon(Icons.person, size: 40),
                  Icon(Icons.settings, size: 30),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                
              ],
            ),
          ],
        )),
      ),
    );
  }
}
