import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_fanpage_kk/views/homeScreen.dart';

class GeneratorInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
        value: FirebaseAuth.instance.authStateChanges(),
        initialData: null,
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            brightness: Brightness.dark,
          ),
          title: 'Chat Application',
          debugShowCheckedModeBanner: false,
          home: Home(),
        ));
  }
}
