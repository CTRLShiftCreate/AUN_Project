import 'package:flutter/material.dart';
import 'navigation.dart';

/* import 'home.dart'; */
import 'login.dart';

import 'supplemental/colors.dart';

/* import 'backdrop.dart'; */
/* import 'messages.dart'; */

/* import "package:aun_project/portal_menu_page.dart"; */

//import 'cut_corners_border.dart';

//Converts the app to a Stateful Widget
class AunPortal extends StatefulWidget {

    @override
    _AunPortalState createState() {
        return new _AunPortalState();
        }
    }

class _AunPortalState extends State<AunPortal> {
   /*  Category _currentCategory = Category.all;

    void _onCategoryTap(Category category) {
        setState(() {
                  _currentCategory = category;
                });
    } */

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AUN Portal",
      theme: _aunTheme,
      
      //Changes the Home to the NavigationBar
      home: NavigationBar(),/* Backdrop(
          //TODO: Make currentCategory field take _currentCategory
          currentCategory: _currentCategory,
          //
          frontLayer: NavigationBar(),
          //TODO: Change backLayer field value to CategoryMenuPage
          backLayer: CategoryMenuPage(
              currentCategory: _currentCategory,
              onCategoryTap: _onCategoryTap,
          ),
          frontTitle: Text("AUN Portal"),
          backTitle: Text("MENU"),
      ), */
      
      initialRoute: "/login",       //App starts off at the login
      onGenerateRoute: _getRoute,
    );
  }

    //Define the route to the LoginPage
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

//Building the AUN Portal Theme
final ThemeData _aunTheme = _buildPortalTheme();

ThemeData _buildPortalTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: aunBlueDark,
    primaryColor: aunBlueLight,
    buttonColor: aunBlueLight,
    scaffoldBackgroundColor: aunBackgroundWhiteDark,
    cardColor: aunGreenDark,
    textSelectionColor: aunBlueLight,
    errorColor: aunRedDark,

    //Adding the text themes
    textTheme: _buildPortalTextTheme(base.textTheme),
    primaryTextTheme: _buildPortalTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildPortalTextTheme(base.accentTextTheme),

    //Adding the icon themes
    primaryIconTheme: base.iconTheme.copyWith(
      color: aunBackgroundWhite
    ),

    //Decorating the inputs
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
      //border: CutCornersBorder(),
    ),
  );
}

//Building a Portal Text Theme
TextTheme _buildPortalTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
      decorationColor: aunBackgroundWhite,
    ),
    title: base.title.copyWith(
      fontSize: 18.0,
           
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
  ).apply(
    displayColor: aunBlueDark,
    bodyColor: aunBlueDark,
  );
}