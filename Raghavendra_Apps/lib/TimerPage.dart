import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(TimerPage());
}

class TimerPage extends StatefulWidget {
  TimerPage({Key key}) : super(key: key);

  TimerPageState createState() => new TimerPageState();
}

class TimerPageState extends State<TimerPage> {
  Stopwatch stopwatch = new Stopwatch();

  void leftButtonPressed() {
    //if (!mounted) return; //bug fix
    setState(() {
      if (stopwatch.isRunning) {
        print("${stopwatch.elapsedMilliseconds}");
      } else {
        stopwatch.reset();
      }
    });
  }

  void rightButtonPressed() {
    //if (!mounted) return; //bug fix
    setState(() {
      if (stopwatch.isRunning) {
        stopwatch.stop();
      } else {
        stopwatch.start();
      }
    });
  }

  Widget buildFloatingButton(String text, VoidCallback callback) {
    TextStyle roundTextStyle =
        const TextStyle(fontSize: 16.0, color: Colors.white);
    return new FloatingActionButton(
        child: new Text(text, style: roundTextStyle), onPressed: callback);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text('Stop Watch'),
        ),
        body: Container(

          color: Colors.white,
          child: new Column(
            children: <Widget>[
              new Container(
                  height: 280.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      //borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      border: Border.all(color:
                        Colors.yellow,
                        style: BorderStyle.solid,
                        width: 10

                      ),
                  ),
                  child: new Center(
                    child: new TimerText(stopwatch: stopwatch),
                  )),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    buildFloatingButton(stopwatch.isRunning ? "lap" : "reset",
                        leftButtonPressed),
                    buildFloatingButton(stopwatch.isRunning ? "stop" : "start",
                        rightButtonPressed),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}

class TimerText extends StatefulWidget {
  TimerText({this.stopwatch});

  final Stopwatch stopwatch;

  TimerTextState createState() => new TimerTextState(stopwatch: stopwatch);
}

class TimerTextState extends State<TimerText> {
  Timer timer;
  final Stopwatch stopwatch;

  TimerTextState({this.stopwatch}) {
    timer = new Timer.periodic(new Duration(milliseconds: 30), callback);
  }

  void callback(Timer timer) {
    if (stopwatch.isRunning) {
      if (!mounted) return;  //bug fix
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle timerTextStyle =
        const TextStyle(fontSize: 60.0, fontFamily: "Open Sans");
    String formattedTime =
        TimerTextFormatter.format(stopwatch.elapsedMilliseconds);
    return new Text(
      formattedTime,
      style: timerTextStyle,
      textDirection: TextDirection.ltr,
    );
  }
} // TimerTextState

class TimerTextFormatter {
  static String format(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredsStr = (hundreds % 100).toString().padLeft(2, '0');

    return "$minutesStr:$secondsStr.$hundredsStr";
  }
}
