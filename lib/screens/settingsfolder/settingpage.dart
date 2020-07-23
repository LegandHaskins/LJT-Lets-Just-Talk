import 'package:LegandsPrsonal_App/screens/chats/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:LegandsPrsonal_App/screens/chats/feedchhistory/chthistory.dart';
import 'package:LegandsPrsonal_App/screens/chats/searchchats/searchchat.dart';
import 'package:LegandsPrsonal_App/screens/subpage/subscriptionpage.dart';
import 'package:LegandsPrsonal_App/screens/userpg/userspg.dart';
import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
import 'package:LegandsPrsonal_App/screens/settingsfolder/settingpage.dart';
import 'package:LegandsPrsonal_App/screens/chats/addchat.dart';

// Everything begins with main() function

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: Container(
            color: Colors.blue,
            margin: EdgeInsets.only(right: 340),
            child: Row(
              children: <Widget>[
                SideNavBar(),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}



