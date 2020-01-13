import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_app/app/services/auth.service.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height + 5);
    var secondControlPoint = Offset(size.width - (size.width / 6), size.height);
    var secondEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//input widget
Widget _input(Icon icon, String hint, TextEditingController controller,
    bool obsecure, BuildContext context, bool enabled) {
  return Container(
    //padding: EdgeInsets.only(left: 20, right: 20),
    child: TextField(
      enabled: enabled,
      controller: controller,
      obscureText: obsecure,
      style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColor),
      decoration: InputDecoration(
          hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 3,
            ),
          ),
          prefixIcon: Padding(
            child: IconTheme(
              data: IconThemeData(color: Theme.of(context).primaryColor),
              child: icon,
            ),
            padding: EdgeInsets.only(left: 30, right: 10),
          )),
    ),
  );
}

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _saving = false;

  AuthService authService = new AuthService();

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  bool _obsecure = true;

  @override
  Widget build(BuildContext context) {
    onPressed({email, password}) async {
      setState(() {
        _saving = true;
      });
      try {
        AuthResult result =
            await authService.signIn(email: email, password: password);
        //debugPrint(result.toString());
        Navigator.of(context).pushNamed('/tabs');
      } catch (error) {
        debugPrint(error.toString());
      }
      setState(() {
        _saving = false;
      });
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: _input(Icon(Icons.email), 'E-mail', _emailController,
                  false, context, !_saving),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: _input(Icon(Icons.email), 'Password',
                    _passwordController, _obsecure, context, !_saving)),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                highlightElevation: 0.0,
                elevation: 0.0,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                onPressed: () {
                  if (_saving) {
                    return true;
                  }

                  onPressed(
                      email: _emailController.value.text.trim().toLowerCase(),
                      password: _passwordController.value.text.trim());
                },
              ),
            ),
            _saving ? Center(
                      child: CircularProgressIndicator(backgroundColor: Theme.of(context).primaryColor,),
                    ) : Container(),
            Expanded(
              child: Align(
                child: ClipPath(
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    height: 400,
                  ),
                  clipper: BottomWaveClipper(),
                ),
                alignment: Alignment.bottomCenter,
              ),
            )
          ],
        ));
  }
}
