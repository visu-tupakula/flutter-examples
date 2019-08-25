import 'package:flutter/material.dart';
class RowCol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
var appBarWidget = AppBar(
  title: Text("Hello "),
);

    return Scaffold
      (
      //backgroundColor: Colors.blueAccent,
      appBar: appBarWidget,
      body: Container(
        child: buildRow(),
      ),

    );
  }
  Widget buildRow(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
   //   crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
       // Text("Hello World",textDirection: TextDirection.ltr,),
        Image.asset("images/pic1.jpg"),

        Image.asset("images/pic2.jpg"),

        Image.asset("images/pic3.jpg"),
      ],
    );
  }
}
