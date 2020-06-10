import 'package:flutter/material.dart';
import 'package:helloworld/utils/Constants.dart';
import 'package:helloworld/utils/routegenerator/RouteGenerator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        elevation: 10.0,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Flutter 1.0'),
              decoration: BoxDecoration(color: Colors.teal),
            ),
            ListTile(
              title: Text("Hello World (Task 1)"),
              onTap: () {
                Navigator.pop(context);
                RouteGenerator.navigate(context, Constants.ROUTE_HOME, "");
              },
            ),
            ListTile(
              title: Text("Planet Weight (Task 2 + Task 3)"),
              onTap: () {
                Navigator.pop(context);
                RouteGenerator.navigate(
                    context, Constants.ROUTE_PLANET_WEIGHT, "");
              },
            ),
            ListTile(
              title: Text("State Management Normal Weight (Task 4)"),
              onTap: () {
                Navigator.pop(context);
                RouteGenerator.navigate(
                    context, Constants.ROUTE_CART_APP, "");
              },
            )
            ,
            ListTile(
              title: Text("State Management Provider (Task 4)"),
              onTap: () {
                Navigator.pop(context);
                RouteGenerator.navigate(
                    context, Constants.ROUTE_CART_APP_PROVIDER, "");
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(fontFamily: "Raleway", fontSize: 20.0),
        ),
      ),
    );
  }
}
