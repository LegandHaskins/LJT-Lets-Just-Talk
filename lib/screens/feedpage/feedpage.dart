import 'package:LegandsPrsonal_App/screens/chats/chatpage.dart';
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

class Feedpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text('Latest Feed Page'),
      ),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            SideNavBar(),
            SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * .85,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.network(
                                          'https://images.unsplash.com/photo-1577563908411-5077b6dc7624?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text('Chat App'),
                                      ),
                                    ],
                                  )),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


