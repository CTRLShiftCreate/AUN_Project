import 'package:flutter/material.dart';
import 'supplemental/messages.dart';
//import 'supplemental/messages_repository.dart';

class MessageCard extends StatefulWidget {
  final Message message;

  MessageCard(this.message);

  @override
  _MessageCardState createState() => _MessageCardState(message);
}

class _MessageCardState extends State<MessageCard> {
  Message message;


  List<Message> messages;

  _MessageCardState(this.message);

  @override
  void initState() {
    super.initState();
    messages = MessageRepository().getMessages();
  }

  @override
  Widget build(BuildContext context) {
    return messageCard;
  }

  Widget get messageCard {
    return Dismissible(
      key: Key(message.id.toString()),
      direction: DismissDirection.horizontal,
      onDismissed: (DismissDirection direction) {
        _delete(message);
      },
      resizeDuration: null,
      dismissThresholds: _dismissThresholds(),
      //background: LeaveBehindView(),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                ListTile(
                  title: Center(
                    child: Text(
                      widget.message.title,
                      style: Theme.of(context).textTheme.headline,
                      maxLines: 1,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(widget.message.text),
                  ),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: Text("Dismiss"),
                        onPressed: () {},
                        textColor: Colors.yellow,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Map<DismissDirection, double> _dismissThresholds() {
    Map<DismissDirection, double> map = Map<DismissDirection, double>();
    map.putIfAbsent(DismissDirection.horizontal, () => 0.5);
    return map;
  }

  void _delete(Message message) {
    MessageRepository().delete(message);
    setState(() {
      messages = MessageRepository().getMessages();
    });
  }
}

/* class LeaveBehindView extends StatelessWidget {
    LeaveBehindView({Key key}) : super(key : key);

    @override
    Widget build(BuildContext context) {
        return Container(
            color: Colors.red,
            child: Row(
                children: <Widget>[
                    Icon(Icons.delete),
                    Expanded(
                        child: Text(""),
                    ),
                    Icon(Icons.delete),
                ],
            ),
        );
    }
} */

/* class ListDisplay extends StatefulWidget{
    final Category category;

    const ListDisplay({this.category: Category.all});

    @override
    State createState() {
        return DynamicList();
    }
}

class DynamicList extends State<ListDisplay> {

    List<Card> _buildListItem(BuildContext context){
      final  List<Message> _messages = MessagesRepository.loadMessages(widget.category);

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
                                    SizedBox(height: 8.0,),
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
}

    @override
        Widget build(BuildContext context){
        return Scaffold(
            body: Container(
                child: Column(
                    children: <Widget>[
                    Flexible(
                        child: ListView.builder(
                            padding: EdgeInsets.all(8.0),
                            reverse: false,
                            itemBuilder: (_, int index) => _buildListItem(context)[index],
                            itemCount: _buildListItem(context).length,
                        ),
                    ),
                    Divider(height: 1.0,)
                    ],
                ),
            ),
        );
    }
} */

/* class HomePage extends StatefulWidget {
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
 */
