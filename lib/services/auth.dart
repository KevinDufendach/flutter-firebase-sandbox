import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_sandbox/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Create user object based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser firebaseUser) {
    return firebaseUser != null ? User(uid: firebaseUser.uid) : null;
  }

  /// auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
      // .map((FirebaseUser user) => _userFromFirebaseUser(user));
      // Can shorten the above statement to the below
      .map(_userFromFirebaseUser);
  }

  /// sign in anon
  Future signInAnon() async {
    try {
      AuthResult authResult = await _auth.signInAnonymously();
      FirebaseUser user = authResult.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email & password

  // register with email & password

  // sign out
}