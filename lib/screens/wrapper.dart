import 'package:flutter/material.dart';
import 'package:flutter_firebase_sandbox/screens/authenticate/authenticate.dart';
import 'package:flutter_firebase_sandbox/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either home or authenticate widget
    return Authenticate();
  }
}
