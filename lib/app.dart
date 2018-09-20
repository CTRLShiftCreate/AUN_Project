import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

import 'colors.dart';
//import 'cut_corners_border.dart';

//TODO: Convert to Stateful Widget
class AunPortal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AUN Portal",
      theme: _aunTheme,
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
final ThemeData _aunTheme = _buildPortalTheme();

ThemeData _buildPortalTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: aunGreenLight,
    primaryColor: aunGreenDark,
    buttonColor: aunBlueLight,
    scaffoldBackgroundColor: aunBackgroundWhiteDark,
    cardColor: aunBackgroundWhite,
    textSelectionColor: aunBlueLight,
    errorColor: aunRedDark,

    //TODO: Add the text themes
    textTheme: _buildPortalTextTheme(base.textTheme),
    primaryTextTheme: _buildPortalTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildPortalTextTheme(base.accentTextTheme),

    //TODO: Add the icon themes
    primaryIconTheme: base.iconTheme.copyWith(
      color: aunBlueDark
    ),

    //TODO: Decorate the inputs

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
      //border: CutCornersBorder(),
    ),
  );
}

//TODO: Build a Portal Text Theme
TextTheme _buildPortalTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
    ),
    title: base.title.copyWith(
      fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
  ).apply(
    fontFamily: "Rubik",
    displayColor: aunBlueDark,
    bodyColor: aunBlackDark,
  );
}