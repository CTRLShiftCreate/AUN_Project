import 'package:flutter/material.dart';
import 'supplemental/placeholder_widget.dart';
import 'home.dart';
import 'supplemental/colors.dart';
//import 'canvas.dart';
//import 'package:url_launcher/url_launcher.dart';

class NavigationBar extends StatefulWidget {
  @override
  NavigationBarState createState() {
    return new NavigationBarState();
  }
}

class NavigationBarState extends State<NavigationBar> {
  int i = 0;
  var pages = [
    SafeArea(child: HomePage()),
    SafeArea(child: PlaceholderWidget(Colors.blue)),
    SafeArea(child: PlaceholderWidget(Colors.green)),
    SafeArea(child: PlaceholderWidget(Colors.purple)),
    SafeArea(child: PlaceholderWidget(Colors.white)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: aunBlueDark,
      body: pages[i],
      drawer: Theme(
        data: ThemeData(),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Salim Hussaini"),
                accountEmail: Text("salim.hussaini@aun.edu.ng"),
                currentAccountPicture: CircleAvatar(
                  child: Text("SH"),
                ),
                decoration: BoxDecoration(color: aunBlueLight),
              ),
              ListTile(
                title: Text("Account details"),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Notifications"),
                leading: Icon(Icons.notifications_active),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("News"),
                leading: Icon(Icons.book),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Event Calender"),
                leading: Icon(Icons.calendar_today),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          //sets the background color of the bottom navigation bar
          canvasColor: aunBlueLight,
          //Sets the active color of the BottomNavigationBar
          primaryColor: Colors.black,
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              title: Text("Canvas"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text("OpenERP"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text("E-Library"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              title: Text("Mail"),
            ),
          ],
          currentIndex: i,
          onTap: (index) {
            setState(() {
              i = index;
            });
          },
        ),
      ),
    );
  }
}
