import 'package:flutter/material.dart';

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