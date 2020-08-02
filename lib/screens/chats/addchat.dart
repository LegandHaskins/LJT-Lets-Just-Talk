import 'dart:io';
import 'package:LegandsPrsonal_App/auth.dart';
import 'package:LegandsPrsonal_App/screens/chats/side_nav.dart';
import 'package:LegandsPrsonal_App/screens/const.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker_modern/image_picker_modern.dart';
import 'package:path/path.dart';
// import 'package:LegandsPrsonal_App/screens/chats/feedchhistory/chthistory.dart';
// import 'package:LegandsPrsonal_App/screens/chats/searchchats/searchchat.dart';
// import 'package:LegandsPrsonal_App/screens/subpage/subscriptionpage.dart';
// import 'package:LegandsPrsonal_App/screens/userpg/userspg.dart';
// import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
// import 'package:LegandsPrsonal_App/screens/settingsfolder/settingpage.dart';
// import 'package:LegandsPrsonal_App/screens/chats/addchat.dart';

// Everything begins with main() function
class AddChat extends StatefulWidget {
  @override
  _AddChatState createState() => _AddChatState();
}

class _AddChatState extends State<AddChat> {
  final Auth _auth = Auth();
  File _image;
  String imageUrl;
  String title;

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
        title: Text('New Chat'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'Chat Title:',
                          style: kTitleTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Insert Name Here',
                              hintStyle: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() => title = val.trim());
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                      children: [
                        Text(
                          'Upload Image:',
                          style: kTitleTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            getImage();
                          },
                          child: Container(
                              width: 300,
                              height: 200,
                              color: Colors.black87,
                              child: _image == null
                                  ? Image.network(
                                      "https://i.pinimg.com/originals/d2/f1/c0/d2f1c0c4a671574b0536240f7d9c47c3.jpg",
                                      fit: BoxFit.fill,
                                    )
                                  : Image.file(_image, fit: BoxFit.fill)
                              // child: Padding(
                              //   padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              //   child: IconButton(
                              //     icon: Icon(Icons.file_upload,
                              //     size: 55,
                              //     ),
                              //     onPressed: (){
                              //       getImage();
                              //     },
                              //   ),
                              // ),
                              ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.add_circle,
                              size: 55,
                            ),
                            onPressed: () {
                              uploadFile();
                              print(title);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
