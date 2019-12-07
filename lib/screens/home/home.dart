import 'package:flutter/material.dart';
import 'package:flutter_firebase_sandbox/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _authSvc = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Brew Crew'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              _authSvc.signOut();
            },
            icon: Icon(Icons.person),
            label: Text('logout'),
          )
        ],
      ),
    );
  }
}
