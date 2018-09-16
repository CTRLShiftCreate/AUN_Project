import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

//TODO: Convert to Stateful Widget
class AunPortal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AUN Portal",
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      //TODO: Change home: to a Backdrop with a HomePage frontLayer
      home: HomePage(),
      //TODO: Make currentCategory field take _currentCategory
      //TODO: Pass _currentCategory for frontLayer
      //TODO: Change backLayer field value to CategoryMenuPage
      initialRoute: "/login",
      onGenerateRoute: _getRoute,
      //TODO: Add a theme
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true, 
      );
  }
}

//TODO: Build Portal Theme
//TODO: Build a Portal Text Theme