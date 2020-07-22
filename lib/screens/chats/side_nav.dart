import 'package:flutter/material.dart';
import 'package:LegandsPrsonal_App/screens/chats/feedchhistory/chthistory.dart';
import 'package:LegandsPrsonal_App/screens/chats/searchchats/searchchat.dart';
import 'package:LegandsPrsonal_App/screens/subpage/subscriptionpage.dart';
import 'package:LegandsPrsonal_App/screens/userpg/userspg.dart';
import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
import 'package:LegandsPrsonal_App/screens/settingsfolder/settingpage.dart';
import 'package:LegandsPrsonal_App/screens/chats/addchat.dart';

class SideNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * .15,
      // color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add_circle, size: 40),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddChat();
                    },
                  ),
                );
              },
            ),
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
    );
  }
}
