import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';

class AuthService with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //FirebaseUser currentUser;

  ///
  /// return the Future with firebase user object FirebaseUser if one exists
  ///
  Future<FirebaseUser> getUser() {
    return _auth.currentUser();
  }

  // wrapping the firebase calls
  Future logout() async {
    var result = FirebaseAuth.instance.signOut();
    notifyListeners();
    return result;
  }

  
  Future<AuthResult> signIn({String email, String password}) async {
    try {
      var result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      // since something changed, let's notify the listeners...

      //this.currentUser = result.user;
      notifyListeners();
      return result;
    }  catch (e) {
      // throw the Firebase AuthException that we caught
      throw new AuthException(e.code, e.message);
    }
  }
  
  Future<AuthResult> signUp({String email, String password}) async {
    try {
      var result = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).catchError((onError) {
            debugPrint(onError.toString());
          }).then((onValue) {
            debugPrint(onValue.toString());
          });
      // since something changed, let's notify the listeners...
      notifyListeners();
      
      return result;
    }  catch (e) {
      debugPrint(e.toString());
      // throw the Firebase AuthException that we caught
      throw new AuthException(e.code, e.message);
    }
  }

}