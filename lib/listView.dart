import 'package:flutter/material.dart';
import 'supplemental/messages.dart';
import "messageCard.dart";

class MessageList extends StatefulWidget {
  @override
  MessageListState createState() {
    return new MessageListState();
  }
}

class MessageListState extends State<MessageList> {
    List<Message> _messages;

    @override
    void initState(){
        super.initState();
        MessageRepository().init();
        _messages = MessageRepository().getMessages();
    }

    @override
    Widget build(BuildContext context) {
        return _buildList(context);
    }

    ListView _buildList(context) {
        return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: _messages.length,
            itemBuilder: (context, int) {
                return MessageCard();
            },
        );
    }
}


