import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

import "messages_repository.dart";
import 'messages.dart';
import 'colors.dart';

import 'placeholder_widget.dart';

class HomePage extends StatefulWidget {
  //TODO: Make a collection of cards
  final Category category;

  const HomePage({this.category: Category.all});

  @override
  _HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.blue),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.purple),
  ];

  List<Card> _buildGridCards(BuildContext context) {
    List<Message> messages = MessagesRepository.loadMessages(widget.category);

    if (messages == null || messages.isEmpty) {
      return const <Card>[]; //Make it show there are no new notifications
    }

    final ThemeData theme = Theme.of(context);

    return messages.map((message) {
      return Card(
        //TODO: Adjust card heights
        elevation: 1.0,
        child: Column(
          //TODO: Center items on the card
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Make the cards a ListView
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  //TODO: Align labels to the bottom and center
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //TODO: Handle overflowing labels
                    Text(
                      message == null ? "" : message.name,
                      style: theme.textTheme.button,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      message == null ? "" : message.text,
                      style: theme.textTheme.caption,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
    /* (int index) => Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0/11.0,
              child: Image.asset("assets/aun_logo.jpeg"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Title"),
                  SizedBox(height: 8.0,),
                  Text("Secondary Text"),
                ] ,
              ),
            ),
          ],
        ),
      ), */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: Add a grid view
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          //sets the background color of the bottom navigation bar
          canvasColor: aunBlueLight,
          //Sets the active color of the BottomNavigationBar
          primaryColor: Colors.black,
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex, //This is be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text("OpenERP"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              title: Text("Canvas"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text("E-Library"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              title: Text("Mail"),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(8.0),
                  childAspectRatio: 8.0 / 10.0,
                  //TODO: Build a grid of cards
                  children: _buildGridCards(context)),
            ),
          ),
          Container(
            child: _children[_currentIndex],
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
