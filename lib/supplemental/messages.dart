//import 'package:flutter/foundation.dart';

class Message {
    final String title;
    final String text;
    final int id;
    final String date;

    const Message(this.id, this.title, this.text, this.date);
}



class MessageRepository {
    static final MessageRepository _singleton = MessageRepository._internal();

    factory MessageRepository() {
        return _singleton;
    }

    MessageRepository._internal();

    List<Message> _messages;


    void init(){
    _messages = List<Message>();
    _messages..add(Message(0, "Finance", "The daily Internal Rate of Exchange for the US Dollar for the 17th September, 2018 is N306.25", "Thursday"))
    ..add(Message(1, "CoffeeShop", "Meal Balance: 227950", "Tuesday"))
    ..add(Message(2, "Student Activities", "Activities Expo!!!", "Monday"))
    ..add(Message(3, "The Weekender", "Weekend Activities. Writing Center Skills Seminar Mathematics Q & A S.T.A.R.S. Club Presidency Handover", "Sunday"))
    ..add(Message(4, "Muslim Students Society", "Updated Prayer Times", "Wednesday"))
    ..add(Message(5, "CANVAS", "Citation Workshop", "Friday"))
    ..add(Message(6, "SGA", "HS Game Night!!!", "Saturday"))
    ..add(Message(7, "Byron Bullock", "Dinner on Me", "Tuesday"))
    ..add(Message(8, "Publicity Reslife", "Become the ResLife Student of the Month", "Sunday"))
    ..add(Message(9, "AUN Careers", "Live Radio Starts Now", "Friday"));
    }

    List<Message> getMessages() {
        return _messages;
    }

    void delete(Message message) {
    if (_messages.contains(message)) {
        _messages.remove(message);
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