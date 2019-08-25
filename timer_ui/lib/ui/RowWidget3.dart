import 'package:flutter/material.dart';
import 'RowWidget2.dart' as rowWidget;
class RowWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final startSection = new Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new rowWidget.MyButtonTheme('Work', Colors.deepOrange),
            SizedBox(
              width: 10,
            ),
            new rowWidget.MyButtonTheme('Short Break', Colors.lightGreen),
            SizedBox(
              width: 10,
            ),
            new rowWidget.MyButtonTheme('Long Break', Colors.green),
          ],
        ),

      ),
    );

    final midSection = new Expanded(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //new MyButtonTheme('Timer goes here', Colors.deepOrange),
          Center(
            child: new CustomPaint(painter: rowWidget.DrawCircle(),
//              child:  new Text("25:00", style: new TextStyle(
//                    fontSize: 30.0, fontWeight: FontWeight.w300, color: Colors.green)),
            ),
          )
        ],
      ),
    );
    final endSection = new Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new rowWidget.MyButtonTheme('Stop', Colors.deepOrange),
            SizedBox(
              width: 10,
            ),
            new rowWidget.MyButtonTheme('ReStart', Colors.green),
          ],
        ),
      ),
    );

    var appBarWidget = AppBar(
      title: Text("Timer UI"),
    );
    return Scaffold(
      appBar: appBarWidget,
      body: Container(
        child: Column(
          children: <Widget>[startSection,midSection,endSection
          ],
        ),
      ),
    );
  }
}
