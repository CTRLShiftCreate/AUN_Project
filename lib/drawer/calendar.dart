import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter/material.dart';
import 'package:aun_project/supplemental/colors.dart';
import 'package:aun_project/navigation.dart';

class Calendar extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
	    theme: ThemeData(
		    primaryColor: aunBlueLight,
	    ),
	    home: AunCalendar(
		    title: "AUN Event Calendar"
	    ),
    );
  }
}

class AunCalendar extends StatefulWidget {
	AunCalendar ({Key key, this.title}) : super(key: key);

	final String title;

	@override
	_AunCalendarState createState() => _AunCalendarState();
}

class _AunCalendarState extends State<AunCalendar> {
	DateTime _currentDate = DateTime(2018);
	List<DateTime> _markedDate = [DateTime(2019), DateTime(2018)];

	@override
	Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
	    appBar: AppBar(
		    title: Text(widget.title),
	    ),
	    body: Container(
		    margin: EdgeInsets.symmetric(horizontal: 16.0),
		    child: CalendarCarousel(
			    onDayPressed: (DateTime date) {
			    	this.setState(() => _currentDate = date);
			    },
			    weekendTextStyle: TextStyle(
				    color: Colors.red,
			    ),
			    thisMonthDayBorderColor: Colors.grey,
			    markedDates: _markedDate,
			    height: 420.0,
			    selectedDateTime: _currentDate,
			    daysHaveCircularBorder: true,
		    ),
	    ),
        bottomNavigationBar: BottomAppBar(
            color: aunBlueLight,
            child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.home),
                onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => NavigationBar()));
                }
            )
        ),
    );
  }
}