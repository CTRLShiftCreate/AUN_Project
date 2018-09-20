import 'package:flutter/material.dart';
import 'colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //TODO: Add TextEditingControllers
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
                  Image.asset("images/aunlogo.png"),
                  SizedBox(height: 16.0),
                ],
              ),
              SizedBox(height: 50.0),
              //TODO: Wrap Username with AccentColorOverride
              //TODO: Remove filled: true values

              //TODO: Add TextField widgets
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
              //TODO: Wrap Password with AccentColorOverride
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
              //TODO: Add button bar
              ButtonBar(
                //TODO: Add a beveled rectangular border to CANCEL
                children: <Widget>[
                  //TODO: Add buttons
                  FlatButton(
                    child: Text("CLEAR"),
                    /*shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),*/
                    onPressed: () {
                      //TODO: Clear the text fields
                      _usernameController.clear();
                      _passwordController.clear();
                    },
                  ),
                  //TODO: Add an elevation to SIGN IN
                  //TODO: Add a beveled rectangular border to SIGN IN
                  RaisedButton(
                    child: Text("SIGN IN"),
                    elevation: 8.0,
                    shape: StadiumBorder(),
                    onPressed: () {
                      //TODO: Show the next page
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

//TODO: Add AccentColorOverride
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
