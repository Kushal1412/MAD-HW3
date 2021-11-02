import 'package:flutter_fanpage_kk/services/database.dart';
import 'package:flutter_fanpage_kk/views/new_message_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_fanpage_kk/models/user_cred.dart';

class NewMessageProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<UserEX>>.value(
      value: Database.streamUsers(),
      initialData: [],
      child: NewMessageScreen(),
    );
  }
}
