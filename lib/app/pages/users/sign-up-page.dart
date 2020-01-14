import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_app/app/services/auth.service.dart';

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

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _saving = false;

  AuthService authService = new AuthService();

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController = new TextEditingController();

  bool _obsecure = true;

  @override
  Widget build(BuildContext context) {
    onPressed({email, password}) async {
      setState(() {
        _saving = true;
      });
      try {
        AuthResult result =
            await authService.signUp(email: email, password: password);
        debugPrint(result.toString());
        Navigator.of(context).pushNamed('/signin');
      } catch (error) {
        debugPrint(error.toString());
      }
      setState(() {
        _saving = false;
      });
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
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
                child: _input(Icon(Icons.vpn_key), 'Password',
                    _passwordController, _obsecure, context, !_saving)),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: _input(Icon(Icons.vpn_key), 'Confirm Password',
                    _confirmPasswordController, _obsecure, context, !_saving)),
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
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                onPressed: () {
                  if(_passwordController.value.text != _confirmPasswordController.value.text) {
                    return false;
                  }
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
            Center(child: InkWell(
                child: Text('Already have an account?', style: TextStyle(color: Theme.of(context).primaryColor),),
                onTap: () {
                  Navigator.of(context).pushNamed('/signin');
                }
            ))
            
          ],
        ));
  }
}
