import 'package:flutter/material.dart';
import 'package:aun_project/navigation.dart';
import 'package:aun_project/supplemental/colors.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        textTheme: TextTheme(title: TextStyle(color: aunBackgroundWhite)),
        backgroundColor: aunBlueLight,
        title: Text("My Account"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: aunBlueLight,
        child: IconButton(
            color: Colors.white,
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => NavigationBar()));
            }),
      ),
      body: new Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 60.0,
              child: Text(
                "SH",
                textScaleFactor: 3.0,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue,
            ),
          ),
        ),
        Card(
          color: Colors.white,
          shape: StadiumBorder(),
          margin: EdgeInsets.all(0.5),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Title(
                color: Colors.white,
                child: Text("Salim Hussaini"),
              ),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          shape: StadiumBorder(),
          margin: EdgeInsets.all(0.5),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("A00021809"),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          shape: StadiumBorder(),
          margin: EdgeInsets.all(0.5),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text("Software Engineering"),
          )),
        ),
        Container(
          margin: EdgeInsets.all(0.1),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                splashColor: Colors.green,
                color: Colors.white,
                shape: StadiumBorder(),
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  final snackBar = SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text("Does not contain any Barcode"),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text("Display Barcode"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
