//import 'package:flutter/foundation.dart';

class Message {
    final String title;
    final String text;
    final int id;

    const Message(this.id, this.title, this.text);
}


    List<Message> _message;

class MessageRepository {
    static final MessageRepository _singleton = MessageRepository._internal();

    factory MessageRepository() {
        return _singleton;
    }

    MessageRepository._internal();

    List<Message> _messages;


    void init(){
    _messages = List<Message>();
    _messages..add(Message(0, "Finance", "The daily Internal Rate of Exchange for the US Dollar for the 17th September, 2018 is N306.25"))
    ..add(Message(1, "CoffeeShop", "Meal Balance: 227950"))
    ..add(Message(2, "Student Activities", "Activities Expo!!!"))
    ..add(Message(3, "The Weekender", "Weekend Activities. Writing Center Skills Seminar Mathematics Q & A S.T.A.R.S. Club Presidency Handover"))
    ..add(Message(4, "Muslim Students Society", "Updated Prayer Times"))
    ..add(Message(5, "CANVAS", "Citation Workshop"))
    ..add(Message(6, "SGA", "HS Game Night!!!"))
    ..add(Message(7, "Byron Bullock", "Dinner on Me"))
    ..add(Message(8, "Publicity Reslife", "Become the ResLife Student of the Month"))
    ..add(Message(9, "AUN Careers", "Live Radio Starts Now"));
    }

    List<Message> getMessages() {
        return _messages;
    }

    void delete(Message _messages) {
    if (_message.contains(_messages)) {
        _message.remove(_messages);
    }
    
}
}




//Creating a Message Repository




/* enum Category { all, notification, announcement, update, }

class Message {
  const Message({
    @required this.category,
    @required this.id,
    @required this.read,
    @required this.name,
    @required this.text,
  })  : assert(category != null),
        assert(id != null),
        assert(read != null),
        assert(name != null),
        assert(text != null);

  final Category category;
  final int id;
  final bool read;
  final String name;
  final String text;

  String get assetName => "aun_logo.jpeg";
  String get assetPackage => "assets";

  @override
  String toString() => "$name (id=$id)";
  
} */