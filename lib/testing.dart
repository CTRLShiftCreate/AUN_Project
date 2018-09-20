/* import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      child: Row(
        children: [
          Expanded(
            child: Column(
            ),
          ),
          HomePage(),
        ],)
    );
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project AUN',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(
        appBar: AppBar(
            title: Title(
              child: Text("Project AUN"),
              color: Colors.white,
            ),
        ),
        body: ListView(
          children: [
            titleSection,
          ]
          
          )
      )
    );
  }
}

class HomePage extends StatefulWidget {
  _ProfilePageState createState() => new _ProfilePageState();

}

class _ProfilePageState extends State<HomePage> {
  bool _isSelected = true; //This makes it so that the homepage is always the first page;

  void _toggleSelected() {
    setState(() {
          if (_isSelected == false) {
            _isSelected = true;
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(0.0),
          child: IconButton(
            icon: (_isSelected
              ? Icon(Icons.portrait)
              : Icon(Icons.photo)),
            color: Colors.red[500],
            onPressed: _toggleSelected,
          ),
        );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "AUN Portal Login Screen",
      theme: ThemeData(
        primarySwatch: Colors.black,
      ),
      home: Welcome(),
      routes: <String, WidgetBuilder> {
        "/welcome":(BuildContext context) => Welcome(),
        "/signin": (BuildContext context) => SignIn(),
        "/canvas": (BuildContext context) => CanvasRoute(),
        "/openerp": (BuildContext context) => OpenERPRoute(),
        "/library": (BuildContext context) => LibraryRoute(),
        "/email": (BuildContext context) => EmailRoute(),
      },
    );
  }
}

class LoadingBaseState<_Login extends StatefulWidget> extends State<_Login>{
  
  bool _isLoading = false;
  bool _hasUser = false;
  String _title = "";

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(_title),
      actions: <Widget>[
        _hasUser ? FlatButton(
          onPressed: _logOut,
          child: Text("Log out",
          style: TextStyle(
            color: Colors.white
          ),
          )
        ): Container(),
      ]
    ),
    body: _isLoading ? Center(
      child: CircularProgressIndicator(),
    ):content(),
  );

  Widget content();

  set isLoading(bool value) {
    _isLoading = value;
  }

  set title(String value) {
    _title = value;
  }

  set hasUser(bool value) {
    _hasUser = value;
  }
} */