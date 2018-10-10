/*
import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class CanvasBrowser extends InAppBrowser {
    
    @override
    void onLoadStart(String url) {
        print("\n\nStarted $url\n\n");
    }
    
    @override
    void onLoadStop(String url) async {
        print ("\n\nStopped $url\n\n");
        
        //print body html
        print (await this.injectScriptCode("document.body.innerHTML"));
        
        //add jquery library and custom javascript
        await this.injectScriptFile("https://code.jquery.com/jquery-3.3.1.min.js");
        this.injectScriptCode("""
            \$( "body").html( "Next Step...")
            """);

        //add custom css
        this.injectScriptFile("https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css");

    }

    @override
    void onLoadError (String url, int code, String message) {
        print ("\n\nCan't load $url... Error: $message\n\n");
    }

    @override
    void onExit() {
    // TODO: implement onExit
        print("\n\nBrowser closed!\n\n");
    }

    @override
    void shouldOverrideUrlLoading(String url) {
    // TODO: implement shouldOverrideUrlLoading
        print("\n\n override $url \n\n");
        this.loadUrl(url);
    }

}

CanvasBrowser canvasBrowser = CanvasBrowser();

class Canvas extends StatefulWidget {
    @override
    _CanvasState createState() => _CanvasState();
}

class _CanvasState extends State<Canvas> {
    
    @override
    void initState() {
        super.initState();
    }
    
    @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text("Canvas"),
            ),
            body: Center(
                child: RaisedButton(onPressed: () {
                    canvasBrowser.open("canvas.aun.edu.ng", options: {
                        "useShouldOverrideUrlLoading": true
                    });
                },
                child: Text("Open Canvas"),
            ),
            ),
        ),
    );
  }
}
*/


/*import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

*//* The GOAL is to somehow find a way to
    INTEGRATE CANVAS into the app
    POSSIBLE METHODS:
    1. Creating a WebView that will contain the site in-app
    2. Recreating the Canvas site in a mobile format and then streaming data
    ... More Options to be thought of *//*

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
}*/
