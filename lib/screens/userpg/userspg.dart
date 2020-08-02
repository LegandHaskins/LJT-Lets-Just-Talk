import 'dart:io';
import 'package:LegandsPrsonal_App/auth.dart';
import 'package:LegandsPrsonal_App/screens/chats/side_nav.dart';
import 'package:LegandsPrsonal_App/screens/enterance_page/landingpg.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker_modern/image_picker_modern.dart';
import 'package:path/path.dart';

// Everything begins with main() function

class Userspg extends StatefulWidget {
  @override
  _UserspgState createState() => _UserspgState(); 
}

class _UserspgState extends State<Userspg> {
 final Auth _auth = Auth();
File _image;
String imageUrl;

Future uploadFile() async {
    StorageReference storageReference = FirebaseStorage.instance
        .ref()
        .child('avatars/${basename(_image.path)}');
    StorageUploadTask uploadTask = storageReference.putFile(_image);
    await uploadTask.onComplete;
    print('File Uploaded');
    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        imageUrl = fileURL;
      });
    });

}   

Future<void> getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
}

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
                          child:_image==null?
                          Image.network(
                            "https://i.pinimg.com/originals/d2/f1/c0/d2f1c0c4a671574b0536240f7d9c47c3.jpg",
                            fit: BoxFit.fill,
                          ):
                          Image.file(_image,fit:BoxFit.fill)
                    
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
                        getImage();
                      },
                    ),
                  ),
                  Column(

                  ),
                ],
              ),
                SizedBox(
                  height: 20,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Username',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18.0
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'YaGLeg_Land',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child:Icon(
                        Icons.create,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              //iconbtns
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: (){
                      uploadFile();
                    },
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                    child: Text(
                      'Submit'
                    ),
                  ),
                ],
              ),
            ],
          )
          ),
        ),
    );
  }
}
