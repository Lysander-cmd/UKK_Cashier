import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:ukk_cashier/src/login/login.dart';

class Manajer extends StatefulWidget {
  const Manajer({super.key});

  @override
  State<Manajer> createState() => _ManajerState();
}

class _ManajerState extends State<Manajer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manajer"),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}