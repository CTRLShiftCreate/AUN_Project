import 'package:flutter/foundation.dart';

enum Category { notification, announcement, update, }

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
  
}