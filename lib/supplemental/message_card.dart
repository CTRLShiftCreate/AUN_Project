import 'package:flutter/material.dart';
import 'messages.dart';

class MessageCard extends StatelessWidget {
    MessageCard({this.message});
    final Message message;

    static final kTextBoxHeight = 65.0;

    @override
    Widget build(BuildContext context) {
        final ThemeData theme = Theme.of(context);

        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                SizedBox(
                    height: kTextBoxHeight * MediaQuery.of(context).textScaleFactor,
                    width: 121.0,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            //TODO: Make headline6 when available
                            Text(
                                message == null ? "" : message.title,
                                style: theme.textTheme.button,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                            ),
                            SizedBox(height: 4.0),
                            //TODO: Make subtitle2 when available
                        ],
                    ),
                ),
            ],
        );
    }
}