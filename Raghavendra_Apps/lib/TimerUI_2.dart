import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// the root widget of our application
class MyApp extends StatelessWidget {
  // The build method rebuilds the widget tree if there are any changes
  // and allows hot reload to work.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.red,
          title: Text(
            "Productivity Timer",
          ),
        ),
        body: myWidget(),
      ),
    );
  }
}

Widget myWidget() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: MyButtonTheme("Work", Colors.redAccent),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: MyButtonTheme("Short Break", Colors.lightGreen),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: MyButtonTheme("Long Break", Colors.green),
              ),
            ),

            // )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[renderCircle()],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //Padding(padding: EdgeInsets.all(2.0)),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: MyButtonTheme("Stop", Colors.red),
                ),
              ),
              //Padding(padding: EdgeInsets.all(2.0)),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: MyButtonTheme("Restart", Colors.green)),
              ),
              //Padding(padding: EdgeInsets.all(2.0)),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget renderCircle() {
  return Container(
      height: 600.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
            color: Colors.green, style: BorderStyle.solid, width: 10),
      ),
      child: new Center(
        child: Text(
          "25:00",
          style: TextStyle(fontSize: 70),
        ),
      ));
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
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      onPressed: () {},
    );
  }
}
