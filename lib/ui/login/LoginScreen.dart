import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage("assets/images/profile.jpg"),
              fit: BoxFit.cover,
              color: Colors.black87,
              colorBlendMode: BlendMode.color,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              FlutterLogo(
                size: 100.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 4.0),
                child: TextField(
                    decoration: InputDecoration(
                        counterStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        labelText: "Enter Email")),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 16.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        counterStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        labelText: "Enter Password")),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 16.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.teal,
                      onPressed: () {},
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
