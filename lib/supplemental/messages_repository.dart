/* import 'messages.dart';

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
      Message(
          category: Category.announcement,
          id: 4,
          read: false,
          name: "The Weekender",
          text: ("Weekend Activities "
                "Writing Center Skills Seminar "
                "Mathematics Q & A "
                "S.T.A.R.S. Club Presidency Handover")
      ),
      Message(
          category: Category.update,
          id: 5,
          read: true,
          name: "Muslim Students Society",
          text: "Updated Prayer Times"
      ),
      Message(
          category: Category.announcement,
          id: 6,
          read: true,
          name: "CANVAS",
          text: "Citation Workshop",
      ),
      Message(
          category: Category.announcement,
          id: 7,
          read: false,
          name: "SGA",
          text: "HS Game Night!!!",
      ),
      Message(
          category: Category.update,
          id: 8,
          read: true,
          name: "Byron Bullock",
          text: "Dinner on Me",
      ),
      Message(
          category: Category.notification,
          id: 9,
          read: true,
          name: "Publicity Reslife",
          text: "Become the ResLife Student of the Month"
      ),
      Message(
          category: Category.update,
          id: 10,
          read: false,
          name: "AUN Careers",
          text: "Live Radio Starts Now",
      ),
    ];
    if (category == Category.all){
      return allMessages;
    } else {
      return allMessages.where((Message m) {
        return m.category == category;
      }).toList();
    }
  }
} */