import 'package:flutter/material.dart';

class LayOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget drawLine = Container(
      width: MediaQuery.of(context).size.width * 0.35,
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(3.0),

      child: Text('__________________________________________________________',
          style: TextStyle(
              fontSize: 10.0, fontWeight: FontWeight.normal, color: Colors.grey)),
    );
    Row _buildPhoneRowNoIcon( String phNum, String phnDt) {
      return Row(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('    '),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(phNum , style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black)),
                Text(phnDt , style: TextStyle( fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.message, color: Colors.blue),
          ),
        ],
      );
    }
    Row _buildPhoneRow( String phNum, String phnDt) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.phone, color: Colors.blue),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(phNum , style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black)),
                    Text(phnDt , style: TextStyle( fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.message, color: Colors.blue),
              ),
            ],

      );
    }
    Widget emailLine = Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(3.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Row(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_box, color: Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('ali_connors@example.com' , style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black)),
                Text('Personal', style: TextStyle( fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mail, color: Colors.blue),
          ),
        ],
      ),
        ],
      ),
    );
    Widget phoneLine = Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(3.0),
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildPhoneRow('(123) 567-9089', 'Mobile'),
          _buildPhoneRowNoIcon('(345) 567-1234', 'Work'),
          _buildPhoneRowNoIcon('(789) 567-3487', 'Home'),
        ],
      ),
    );

    Widget ImageDisplay = Container(
      //constraints: new BoxConstraints.expand( height: 150.0, ),
      width: MediaQuery.of(context).size.width * 0.90,
      height: MediaQuery.of(context).size.height * 0.35,
      alignment: Alignment.bottomCenter,
      //padding: new EdgeInsets.only(left: 5.0, bottom: 5.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/images/pho1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: new Text('Chennai 2001',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.white,
          )),
    );

    var appBarWidget = AppBar(
      title: Text("!! Call history !!"),
    );
    return Scaffold(
      appBar: appBarWidget,
      body: new Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              ImageDisplay,
            phoneLine,
            drawLine,
            emailLine],
        ),
      ),
    );

  }
}

/*
class Layout extends StatelessWidget {
  final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

// DefaultTextStyle.merge() allows you to create a default text
// style that is inherited by its child and all subsequent children.
  final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green[500]),
              Text('PREP:'),
              Text('25 min'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer, color: Colors.green[500]),
              Text('COOK:'),
              Text('1 hr'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant, color: Colors.green[500]),
              Text('FEEDS:'),
              Text('4-6'),
            ],
          ),
        ],
      ),
    ),
  );
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.black),
      Icon(Icons.star, color: Colors.black),
    ],
  );
  final ratings = Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
  final leftColumn = Container(
    padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Column(
      children: [
        titleText,
        subTitle,
        ratings,
        iconList,
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
      child: Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
      height: 600,
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 440,
              child: leftColumn,
            ),
            mainImage,
          ],
        ),
      ),
    ),
    ),
      ),
    );
  }
}
*/
