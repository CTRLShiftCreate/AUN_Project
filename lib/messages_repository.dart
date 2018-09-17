import 'messages.dart';

class MessagesRepository {
  static List<Message> loadMessages(Category category) {
    const allMessages = <Message> [
      Message(
        category: Category.notification,
        id: 0,
        read: false,
        name: "Finance",
        text: "The daily Internal Rate of Exchange for the US Dollar for the 17th September, 2018 is N306.25",
      ),
      Message(
        category: Category.notification,
        id: 1,
        read: false,
        name: "CoffeeShop",
        text: "Meal Balance: 227950",
      ),
      Message(
        category: Category.update,
        id: 3,
        read: true,
        name: "Student Activities",
        text: "Activities Expo!!!"
      ),
    ];
    if (category == Category.notification){
      return allMessages;
    } else {
      return allMessages.where((Message m) {
        return m.category == category;
      }).toList();
    }
  }
}