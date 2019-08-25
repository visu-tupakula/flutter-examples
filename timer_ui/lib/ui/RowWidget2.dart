import 'dart:ui';

import 'package:flutter/material.dart';
class DrawCircle extends CustomPainter {
  Paint _paint;
  DrawCircle() {
    _paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 10.0
      ..style = PaintingStyle.stroke;
  }
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(10.0, 250.0), 100.0, _paint);

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
} 

class MyButtonTheme extends StatelessWidget {
  final String btnName;
  final Color btnClr;

  MyButtonTheme(this.btnName, this.btnClr);

  @override
  Widget build(BuildContext context) {
    return Expanded (

      child: RaisedButton(
        padding: new EdgeInsets.all(4.0),
        onPressed: () {},
        child: Text(btnName,
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.limeAccent)),
        color: btnClr,
      ),
    );
  }
}
