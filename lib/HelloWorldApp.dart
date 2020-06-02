import 'package:flutter/material.dart';

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.amber), home: MyCustomText());
  }
}

//region Stateful Widget
class MyCustomText extends StatefulWidget {
  @override
  _MyCustomTextState createState() => _MyCustomTextState();
}
//endregion

//region State
class _MyCustomTextState extends State<MyCustomText> {
  //region Variables
  num count = 0;
  String myText = "Hello World";

  //endregion

  //region Custom Methods
  ///  fun to increase count
  void increaseCount() {
    setState(() {
      myText = 'I\'m pressed ${++count} times';
    });
  }

  ///  fun to decrease count
  void decreaseCount() {
    setState(() {
      myText = 'I\'m pressed ${--count} times';
    });
  }

  //endregion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 4,
//              fit: FlexFit.tight,
              child: Text(myText),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, right: 8, bottom: 10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FloatingActionButton(
                    child: Icon(Icons.arrow_back),
                    onPressed: decreaseCount,
                    tooltip: "Decrease",
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.arrow_forward),
                    onPressed: increaseCount,
                    tooltip: "Increase",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//endregion
