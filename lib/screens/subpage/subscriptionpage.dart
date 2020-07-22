import 'package:flutter/material.dart';
import 'package:LegandsPrsonal_App/screens/chats/feedchhistory/chthistory.dart';
import 'package:LegandsPrsonal_App/screens/chats/searchchats/searchchat.dart';
import 'package:LegandsPrsonal_App/screens/subpage/subscriptionpage.dart';
import 'package:LegandsPrsonal_App/screens/userpg/userspg.dart';
import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
import 'package:LegandsPrsonal_App/screens/settingsfolder/settingpage.dart';
import 'package:LegandsPrsonal_App/screens/chats/addchat.dart';

// Everything begins with main() function

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Subscribe'),
      ),
      body: SafeArea(
        child: Container(
            color: Colors.blue,
            margin: EdgeInsets.only(right: 340),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 80, bottom: 80, left: 8, right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove_red_eye, size: 40),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Chthistory();
                              },
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.subscriptions, size: 40),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SubscriptionPage();
                              },
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.home, size: 40),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Feedpage();
                              },
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.person, size: 40),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Userspg();
                              },
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.search, size: 40),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SearchChat();
                              },
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.settings, size: 30),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SettingPage();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[],
                ),
              ],
            )),
      ),
    );
  }
}
