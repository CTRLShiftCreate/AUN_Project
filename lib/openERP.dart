import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

/*The goal is to try integrating OPENERP into the app itself in a webview or directly */
class OpenERP extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
           home: Scaffold(
               appBar: AppBar(
                   title: Text("OpenERP")
               ),
            )
        );
    }
}