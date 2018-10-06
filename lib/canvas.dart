import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

/* The GOAL is to somehow find a way to 
    INTEGRATE CANVAS into the app
    POSSIBLE METHODS:
    1. Creating a WebView that will contain the site in-app
    2. Recreating the Canvas site in a mobile format and then streaming data
    ... More Options to be thought of */

String canvasSite = "google.co.uk";

class CanvasPage extends StatefulWidget {
  @override
  _CanvasState createState() {
    return new _CanvasState();
  }
}

class _CanvasState extends State<CanvasPage> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (_) => WebviewScaffold(
              url: "https://www.google.com",
              withJavascript: true,
              withLocalStorage: true,
            ),
      },
    );
  }
}
