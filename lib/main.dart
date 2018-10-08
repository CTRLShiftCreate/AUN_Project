import 'package:flutter/material.dart';
import 'package:aun_project/app.dart';
import 'package:flutter/services.dart';


void main(){
	SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
		.then((_){
		runApp(new AunPortal());
	});
}