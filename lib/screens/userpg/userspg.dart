import 'package:LegandsPrsonal_App/screens/chats/side_nav.dart';
import 'package:LegandsPrsonal_App/screens/enterance_page/landingpg.dart';
import 'package:flutter/material.dart';
import 'package:LegandsPrsonal_App/screens/chats/feedchhistory/chthistory.dart';
import 'package:LegandsPrsonal_App/screens/chats/searchchats/searchchat.dart';
import 'package:LegandsPrsonal_App/screens/subpage/subscriptionpage.dart';
import 'package:LegandsPrsonal_App/screens/userpg/userspg.dart';
import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
import 'package:LegandsPrsonal_App/screens/settingsfolder/settingpage.dart';
import 'package:LegandsPrsonal_App/screens/chats/addchat.dart';

// Everything begins with main() function

class Userspg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      drawer: Drawer(
        child: SideNavBar()
      ),
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Account Page'),
        actions: <Widget>[
          FlatButton.icon(
              label: Text('Logout'),
              icon: Icon(Icons.block),
              onPressed: () async {
                //await _auth.signout();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Landingpg()),
                );
              }),
        ],
      ),
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.only(right: 0),
            child: Row(
              children: <Widget>[
                // SideNavBar(),
                SingleChildScrollView(
                  child: Padding( 
                    padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                    child: Container(
                      
                      height: 150,
                      width: 150,
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              CircleAvatar(
                                
                              ),
                              Column(
                                children: [
                                  //children here for user info
                                  Card(
                                    //Username
                                  ),
                                  Card(
                                    //BIO
                                  ),
                                  Card(
                                    //BIO text
                                  ),
                                ],
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  
                ),
              ],
            )),
      ),
    );
  }
}
