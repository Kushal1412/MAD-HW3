import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_fanpage_kk/models/user_cred.dart';
import 'package:flutter_fanpage_kk/widgets/userRow.dart';

class NewMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context);
    final List<UserEX> userDirectory = Provider.of<List<UserEX>>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Person to Chat with'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
          shrinkWrap: true, children: getListViewItems(userDirectory, user)),
    );
  }

  List<Widget> getListViewItems(List<UserEX> userDirectory, User user) {
    final List<Widget> list = <Widget>[];
    for (UserEX contact in userDirectory) {
      if (contact.id != user.uid) {
        list.add(UserRow(uid: user.uid, contact: contact));
        list.add(Divider(thickness: 1.0));
      }
    }
    return list;
  }
}
