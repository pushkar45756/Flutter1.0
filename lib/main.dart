import 'package:flutter/material.dart';

import 'HelloWorldApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HelloWorldApp();
    return MaterialApp(
        title: "First Flutter",
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello World'),
            centerTitle: true,
          ),
          body: Container(
            decoration: new BoxDecoration(
                color: Colors.purple,
                gradient: RadialGradient(
                    colors: [Colors.red, Colors.cyan],
                    center: Alignment.center,
                    radius: 1,
//                  stops: [0.5, 0.6],
                    tileMode: TileMode.repeated),
                image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/200"))),
            child: FlutterLogo(
              size: 200,
            ),
            alignment: Alignment(0, 0),
            constraints: BoxConstraints(
                minHeight: 500, minWidth: 500, maxHeight: 600, maxWidth: 600),
          ),
        ));
  }
}
