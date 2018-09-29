import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

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
              url: canvasSite,
              withJavascript: true,
              withLocalStorage: true,
            ),
      },
      initialRoute: "/",
    );
  }
}
