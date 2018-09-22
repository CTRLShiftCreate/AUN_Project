import 'package:flutter/material.dart';
import 'messages.dart';
import 'message_card.dart';

class OneMessageCardColumn extends StatelessWidget {
    OneMessageCardColumn({this.message});

    final Message message;

    @override
    Widget build(BuildContext context) {
        return ListView(
            reverse: true,
            physics: ClampingScrollPhysics(),
            children: <Widget>[
                SizedBox(
                    height: 40.0,
                ),
                MessageCard(
                    message: message,
                ),
            ],
        );
    }
}