import 'package:LegandsPrsonal_App/services/data_services.dart';
import 'package:LegandsPrsonal_App/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  DataService service= DataService();

  User _userFromFirebaseUser(FirebaseUser user) {
    return User(
      uid: user.uid,
      email: user.email,
    );
  }


  Future<User> registerUser(email, password) async {
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    DataService(uid: user.uid).saveUser(user);
    return _userFromFirebaseUser(user);
  }

  Future<User> loginUser(email, password) async {
    AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return userFromFirebase(user);
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  User userFromFirebase(user) {
    return User(email: user.email, uid: user.uid);
  }

  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
