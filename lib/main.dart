import 'package:LegandsPrsonal_App/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
// Everything begins with main() function
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Feedpage(),
  ));
}