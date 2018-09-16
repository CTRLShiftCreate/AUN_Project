import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //TODO: Add TextEditingControllers
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
                  Text("AUN Portal"),
                ],
              ),
              SizedBox(height: 120.0),
              //TODO: Wrap Username with AccentColorOverride
              //TODO: Remove filled: true values
              //TODO: Wrap Password with AccentColorOverride
              //TODO: Add TextField widgets
              //[Name]
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Username",
                ),
              ),
              // spacer
              SizedBox(height: 12.0),
              // [Password]
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Password",
                ),
                obscureText: true,
              ),
              //TODO: Add button bar
            ]),
      ),
    );
  }
}

//TODO: Add AccentColorOverride
