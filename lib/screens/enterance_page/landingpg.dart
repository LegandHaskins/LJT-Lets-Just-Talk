import 'package:LegandsPrsonal_App/authentication/login.dart';
// import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
import 'package:flutter/material.dart';
import 'package:LegandsPrsonal_App/authentication/register.dart';

class Landingpg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  child: MaterialButton(
                    minWidth: 30,
                    padding: EdgeInsets.all(30),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xf582C9E0),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  child: MaterialButton(
                    minWidth: 30,
                    padding: EdgeInsets.all(30),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Color(0xf582C9E0),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}