import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('サインアウト'),
              onTap: () => FirebaseAuth.instance.signOut(),
            )
          ],
        ),
      ),
    );
  }
}
