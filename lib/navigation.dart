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
  int i = 0; //Setting the index for the bottomAppBar
  //Setting the routes for each BottomAppBar page and wrapping it in a SafeArea
  var pages = [
    SafeArea(child: HomePage()),
    //TODO: Create Canvas Navigation
    SafeArea(child: PlaceholderWidget(Colors.blue)),
    //TODO: Create OpenERP Navigation
    SafeArea(child: PlaceholderWidget(Colors.purple)),
    //TODO: Create E-Library Navigation
    SafeArea(child: PlaceholderWidget(Colors.white)),
    //TODO: Create AUN Mail Navigation
    SafeArea(child: PlaceholderWidget(Colors.green)),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: aunBlueDark,
      body: pages[i], //Changes the current display to the current index
      //Creates a side menu
      drawer: Theme(
        data: ThemeData(),
        child: Drawer(
          child: ListView(
          physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Salim Hussaini"),
                accountEmail: Text("salim.hussaini@aun.edu.ng"),
                currentAccountPicture: CircleAvatar(
                  child: Text("SH"),
                  backgroundColor: Colors.green,
                ),
                decoration: BoxDecoration(color: aunBlueLight),
              ),
              //TODO: Create Navigation for the Account Details
              ListTile(
                title: Text("Account details"),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              //TODO: Create Navigation for the Notifications
              ListTile(
                title: Text("Notifications"),
                leading: Icon(Icons.notifications_active),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              //TODO: Create Navigation for AUN News
              ListTile(
                title: Text("News"),
                leading: Icon(Icons.book),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              //TODO: Create Navigation for the Event Calender
              ListTile(
                title: Text("Event Calender"),
                leading: Icon(Icons.calendar_today),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              //TODO: Create Navigation for the Portal's Settings
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
            //TODO: Find a way to integrate Canvas
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              title: Text("Canvas"),
            ),
            //TODO: Find a way to integrate OpenERP
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text("OpenERP"),
            ),
            //TODO: Find a way to integrate the E-Library
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text("E-Library"),
            ),
            //TODO: Find a way to integrate the AUN Mail
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              title: Text("Mail"),
            ),
          ],
          currentIndex: i,
          onTap: (index) {
            setState(
              () {
                i = index;
              },
            );
          },
        ),
      ),
    );
  }
}
