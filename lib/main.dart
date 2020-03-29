import 'package:flutter/material.dart';
import 'package:hotel_app/locationpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;


    return Container(
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.cyan[600], Colors.cyan[900]],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('ZO',
          style: TextStyle(
            fontSize: 60,
            color: Colors.white,
            letterSpacing: 20,
          ),),
          Text('OM',
          style: TextStyle(
            fontSize: 60,
            color: Colors.white,
            letterSpacing: 20,
          ),),
          SizedBox(height: _height * 0.08,),
          Container(
  height: 45.0,
  child: RaisedButton(
    onPressed: () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => LocationPage()));
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    elevation: 10.0,
    child: Ink(
      decoration: BoxDecoration(
          color: Colors.orange[800],
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
        alignment: Alignment.center,
        child: Text(
          "STAY WITH US",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5
          ),
        ),
      ),
    ),
  ),
  ),
        ],
      ),
    );
  }
}
