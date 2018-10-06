import 'package:flutter/material.dart';
import 'supplemental/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Adding TextEditingControllers
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 100.0),
              Column(
                children: <Widget>[
                  Image.asset("images/aunlogo.png"),        //Sets the logo on the login screen
                  SizedBox(height: 16.0),
                ],
              ),
              SizedBox(height: 50.0),
              //[Name]
              AccentColorOverride(
                color: aunBlackDark,
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    //filled: true,
                    labelText: "Username",
                  ),
                ),
              ),
              // spacer
              SizedBox(height: 10.0),
              // [Password]
              AccentColorOverride(
                color: aunBlackDark,
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    //filled: true,
                    labelText: "Password",
                  ),
                  obscureText: true,
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text("CLEAR"),
                    /*shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),*/
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                    },
                  ),
                  RaisedButton(
                    child: Text("SIGN IN"),
                    elevation: 8.0,
                    shape: StadiumBorder(),
                    onPressed: () {
                        //Navigates to the next page
                        //TODO: Verification for the Username and Password
                      Navigator.pop(context);
                    },
                    textColor: Colors.white,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(accentColor: color),
    );
  }
}
