import 'package:LegandsPrsonal_App/screens/chats/side_nav.dart';
import 'package:flutter/material.dart';
// import 'package:LegandsPrsonal_App/screens/chats/feedchhistory/chthistory.dart';
// import 'package:LegandsPrsonal_App/screens/chats/searchchats/searchchat.dart';
// import 'package:LegandsPrsonal_App/screens/subpage/subscriptionpage.dart';
// import 'package:LegandsPrsonal_App/screens/userpg/userspg.dart';
// import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
// import 'package:LegandsPrsonal_App/screens/settingsfolder/settingpage.dart';
// import 'package:LegandsPrsonal_App/screens/chats/addchat.dart';

// Everything begins with main() function 
class AddChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      drawer: Drawer(
         child: SideNavBar()
      ),
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('New Chat'),
      ),
      body: SafeArea(
        child: Row(
          
        ),
      ),
    );
  }
}



