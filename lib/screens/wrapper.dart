
import 'package:LegandsPrsonal_App/authentication/register.dart';
import 'package:LegandsPrsonal_App/models/user.dart';
import 'package:LegandsPrsonal_App/screens/feedpage/feedpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Register();
    } else {
      return Chats();
    }
  }
}
