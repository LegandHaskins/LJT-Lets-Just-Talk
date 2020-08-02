import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class DataService {
  final connection = FirebaseDatabase.instance.reference();
  DataService({this.uid});
  final String uid;

  Future<void> saveUser(user) {
    final usersRef = connection.child('users').child(user.uid);
    usersRef.set({
      'uid': user.uid,
      'email': user.email,

      //add as many attributes as you want
    });
  }

  Future<void> saveChat(title, url) {
    final chatRef = connection.child('chats').child(uid);
    chatRef.set({
      'title': title,
      'url': url,

    });
  }

}
