import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/app/services/auth.service.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  AuthService authService = new AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUser().then( (onValue) {
      if(onValue is FirebaseUser) {
        return Navigator.of(context).pushReplacementNamed('/tabs');
      }
      Navigator.of(context).pushReplacementNamed('/users/signin');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/imgs/icon_bordered.png'),
                      height: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Smart Workout',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  CircularProgressIndicator(
                    strokeWidth: 5,
                    backgroundColor: Theme.of(context).primaryColorDark,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 200,
                    child: Text(
                      'Carregando seus treinos e preparando seu shake...',
                      softWrap: true,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
