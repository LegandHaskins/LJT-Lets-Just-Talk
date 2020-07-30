import 'package:LegandsPrsonal_App/auth.dart';
import 'package:LegandsPrsonal_App/screens/chats/side_nav.dart';
import 'package:LegandsPrsonal_App/screens/enterance_page/landingpg.dart';
import 'package:flutter/material.dart';
// import 'package:LegandsPrsonal_App/screens/chats/feedchhistory/chthistory.dart';
// import 'package:LegandsPrsonal_App/screens/chats/searchchats/searchchat.dart';
// import 'package:LegandsPrsonal_App/screens/subpage/subscriptionpage.dart';
// import 'package:LegandsPrsonal_App/screens/userpg/userspg.dart';
// import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
// import 'package:LegandsPrsonal_App/screens/settingsfolder/settingpage.dart';
// import 'package:LegandsPrsonal_App/screens/chats/addchat.dart';

// Everything begins with main() function

class Userspg extends StatelessWidget {
  final Auth _auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      drawer: Drawer(child: SideNavBar()),
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Account Page'),
        actions: <Widget>[
          FlatButton.icon(
              label: Text('Logout'),
              icon: Icon(Icons.block),
              onPressed: () async {
                await _auth.signout();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Landingpg()),
                );
              }),
        ],
      ),
      body: Builder(
        builder: (context)=> Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.black45,
                      child: ClipOval(
                        child:SizedBox(
                          width: 180,
                          height: 180,
                          child: Image.network(
                            "https://i.pinimg.com/originals/d2/f1/c0/d2f1c0c4a671574b0536240f7d9c47c3.jpg",
                            fit: BoxFit.fill,
                          ) ,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:60),
                    child: IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        size: 30,
                      ),
                      onPressed: (){

                      },
                    ),
                  ),
                  Column(

                  ),
                ],
              ),
              //iconbtns
              Row(

              ),
            ],
          )
          ),
        ),
    );
  }
}
