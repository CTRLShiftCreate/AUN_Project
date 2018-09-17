import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

import "messages_repository.dart";
import 'messages.dart';

class HomePage extends StatelessWidget {
  //TODO: Make a collection of cards
  List<Card> _buildListCards(BuildContext context) {
    List<Message> messages =
        MessagesRepository.loadMessages(Category.notification);

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
            ListTile(
              title: Text(
                        message == null ? "" : message.name,
                        style: theme.textTheme.button,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
              subtitle: Text(
                        message == null ? "" : message.text,
                        style: theme.textTheme.caption,
                      ),
                    )
                  ],
                ),
            );
          }
        );
      }
    }
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

  //TODO: Add a variable for Category
  @override
  Widget build(BuildContext context) {
    //TODO: Return an AsymmetricView
    //TODO: Pass Category variable to AsymmetricView
    return Scaffold(
      //TODO: Add app bar
      appBar: AppBar(
        // TODO: Add buttons and title
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: "menu",
          ),
          onPressed: () {
            print("Menu button");
          },
        ),
        title: Text("AUN Portal"),
        //TODO: Add trailing buttons
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: "search",
            ),
            onPressed: () {
              print("Search button");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: "settings",
            ),
            onPressed: () {
              print("Settings button");
            },
          ),
        ],
      ),
      //TODO: Add a grid view
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: getHomePageBody(context)),
    );
  }
  final List<Message> allMessages = allMessages;

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: allMessages.length,
      itemBuilder: _getMessages,
      padding: EdgeInsets.all(0.0),
    );
  }

  Widget _getMessages(BuildContext context, int index) {
    return Text(allMessages[index].name);
  }
