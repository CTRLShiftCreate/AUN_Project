import 'package:flutter/material.dart';
import 'messages.dart';
import 'messages_repository.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
            crossAxisCount: 2,
            children: _buildGridCards(context),
        )
        
    );
    }
 
}
