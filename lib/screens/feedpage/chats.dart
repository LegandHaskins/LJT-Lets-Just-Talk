// import 'package:LegandsPrsonal_App/screens/chats/chatpage.dart';
import 'package:LegandsPrsonal_App/models/chat.dart';
import 'package:LegandsPrsonal_App/screens/chats/side_nav.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
// import 'package:LegandsPrsonal_App/screens/chats/feedchhistory/chthistory.dart';
// import 'package:LegandsPrsonal_App/screens/chats/searchchats/searchchat.dart';
// import 'package:LegandsPrsonal_App/screens/subpage/subscriptionpage.dart';
// import 'package:LegandsPrsonal_App/screens/userpg/userspg.dart';
// import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
// import 'package:LegandsPrsonal_App/screens/settingsfolder/settingpage.dart';
// import 'package:LegandsPrsonal_App/screens/chats/addchat.dart';

// Everything begins with main() function


class ChatsData extends StatefulWidget {
  _ChatsDataState createState() => _ChatsDataState();
}

class _ChatsDataState extends State<ChatsData> {
  @override
  Widget build(BuildContext context) {
    final dataRef = FirebaseDatabase.instance.reference().child('chats');
    return StreamBuilder(
        stream: dataRef.onValue,
        builder: (BuildContext context, AsyncSnapshot<Event> snapshot) {
          if (snapshot.hasData){
          if (snapshot!=null ) {
            List<Chat> list = [];
            Map<dynamic, dynamic> map = snapshot.data.snapshot.value;
            map.forEach((k, v) => list.add(Chat(
                title: v['title'], url: v['url'], uid: v['uid'])));
            return Chats(chats: list);
          } else {
            return Container();
          }
          }
        });
  }
}

class Chats extends StatefulWidget {
  final List<Chat> chats;
  Chats({this.chats});
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Latest Feed Page'),
      ),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            SideNavBar(),
            SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * .85,
                // width: 40,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.chats.length,
                        itemBuilder: (context, index) {
                          return SingleChat(chat: widget.chats[index]);
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

class SingleChat extends StatelessWidget {
  final Chat chat;
  SingleChat({Key key, this.chat}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        children: [
          Card(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      chat.url
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(chat.title),
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );    
  }
}
