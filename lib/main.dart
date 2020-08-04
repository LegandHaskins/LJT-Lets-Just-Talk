// import 'package:LegandsPrsonal_App/authentication/login.dart'; 
import 'package:LegandsPrsonal_App/auth.dart';
import 'package:LegandsPrsonal_App/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// Everything begins with main() function
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: Auth().user,
      catchError: (_, __) => null,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}