import 'package:flutter/material.dart';

void main() {
  // runApp() is a builtin method that initializes the app layout
  // MyApp() (see below) is a widget that will be the root of our application.
  runApp(MyApp());
}

// the root widget of our application
class MyApp extends StatelessWidget {
  // The build method rebuilds the widget tree if there are any changes
  // and allows hot reload to work.
  @override
  Widget build(BuildContext context) {
    // This time instead of using a Container we are using the MaterialApp
    // widget, which is setup to make our app have the Material theme.
    return MaterialApp(
      // The Scaffold widget lays out our home page for us
      home: Scaffold(
        // We will pass an AppBar widget to the appBar property of Scaffold
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.red,
          // The AppBar property takes a Text widget for its title property
          title: Text(
            "Productivity Timer",
          ),
        ),

        // The body property of the Scaffold widget is the main content of
        // our screen. Instead of directly giving it a widget we are going
        // to break it out into another method so that things don't get
        // too messy here.
        body: myWidget(),
      ),
    );
  }
}


Widget myWidget() {
  return Center(
    child: Container(
      height: 800,
      width: 200,
      child: IntrinsicWidth(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyButtonTheme("Work", Colors.redAccent),
            MyButtonTheme("Short Break", Colors.lightGreen),
            MyButtonTheme("Long Break", Colors.green),
            renderCircle(),
            MyButtonTheme("Stop", Colors.red),
            MyButtonTheme("Restart", Colors.green)
          ],
        ),
      ),
    ),
  );
}

Widget renderCircle() {
  return Container(
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        //borderRadius: BorderRadius.all(Radius.circular(0.0)),
        border: Border.all(
            color: Colors.green, style: BorderStyle.solid, width: 10),
      ),
      child: new Center(
        child: Text(
          "25:00",
          style: TextStyle(fontSize: 20),
        ),
      )
  );
}

class MyButtonTheme extends StatelessWidget {
  final String btnName;
  final Color btColor;

  MyButtonTheme(this.btnName, this.btColor);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: Colors.white,
      color: btColor,
      child: Text(
        btnName,
        style: TextStyle(fontSize: 15),
      ),
      onPressed: () {},
    );
  }
}
