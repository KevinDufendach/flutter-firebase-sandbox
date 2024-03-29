import 'package:flutter/material.dart';
import 'package:flutter_firebase_sandbox/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authSvc = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 50.0,
        ),
        child: RaisedButton(
          child: Text('Sign in anon'),
          onPressed: () async {
            dynamic result = await _authSvc.signInAnon();
            if (result == null) {
              print('error signing in');
            } else {
              print('user signed in');
              print(result.uid);
            }
          },
        ),
      ),

    );
  }
}
