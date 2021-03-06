import 'package:flutter_fanpage_kk/models/conversation.dart';
import 'package:flutter_fanpage_kk/models/user_cred.dart';
import 'package:flutter_fanpage_kk/views/home_builder.dart';
import 'package:flutter_fanpage_kk/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConversationProvider extends StatelessWidget {
  const ConversationProvider({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Convo>>.value(
        value: Database.streamConversations(user.uid),
        initialData: [],
        child: ConversationDetailsProvider(user: user));
  }
}

class ConversationDetailsProvider extends StatelessWidget {
  const ConversationDetailsProvider({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<UserEX>>.value(
        value: Database.streamUsers(), initialData: [], child: HomeBuilder());
  }
}
