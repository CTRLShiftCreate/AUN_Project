import 'package:flutter/material.dart';
import 'listView.dart';
//import "supplemental/messages.dart";

//import 'package:intl/intl.dart';

//import "supplemental/messages_repository.dart";
//import 'supplemental/messages.dart';
 //import 'backdrop.dart';
//import 'colors.dart';

//import 'placeholder_widget.dart';

class HomePage extends StatefulWidget {
  final Title title;

  const HomePage({this.title});

  @override
  _HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  //int _currentIndex = 0;
/* 
  Category _currentCategory = Category.all;

    void _onCategoryTap(Category category) {
        setState(() {
                  _currentCategory = category;
                });
    }
  
 */
    /*The Next block of code creates a card list of messages from the repository
    and then categorises them.
    The categories will be used for filtering messages later on */
  
  /* List<Card> _buildListItem(BuildContext context) {
    final List<Message> _messages =
        MessagesRepository.loadMessages(widget.category);

    if (_messages == null || _messages.isEmpty) {
      return const <Card>[];
    }

    final ThemeData theme = Theme.of(context);

    return _messages.map((message) {
      return Card(
        elevation: 1.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      message == null ? "" : message.name,
                      style: theme.textTheme.button,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      message == null ? "" : message.text,
                      style: theme.textTheme.caption,
                    ),
                  ],
                ),
              ),
            )
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
  //} */

  @override
  Widget build(BuildContext context) {
    /* var _children = [
        Container(child: Expanded(
                    child: Container(
                    child: GridView.count(
                        crossAxisCount: 2,
                        padding: EdgeInsets.all(8.0),
                        childAspectRatio: 8.0 / 10.0,
                        //TODO: Build a grid of cards
                        children: _buildListItem(context)),
                    ),
                ),),
        PlaceholderWidget(Colors.blue),
        PlaceholderWidget(Colors.green),
        PlaceholderWidget(Colors.purple),
        PlaceholderWidget(Colors.white), */
    //];
    return Scaffold(
      appBar: AppBar(
        title: Text("AUN Portal"),
      ),
      body: MessageList()
        /* GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(8.0),
          childAspectRatio: 8.0 / 10.0,
          //Building a grid of cards
          //TODO: Convert the GridView to a LIstView will swippable and taggable widgets
          children: _buildListItem(context) */,
    );
  }

  /* void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  } */
}
