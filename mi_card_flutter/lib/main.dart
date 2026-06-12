import 'package:flutter/material.dart';
// import 'textui.dart'; // 👈 import Textui
import 'loginui.dart';

void main() {
  runApp(
    // MyApp()
    //   Textui()
      LoginUI()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // verticalDirection: VerticalDirection.down,
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 100.0,
                // width: 100.0,
                // width: double.infinity,
                color: Colors.white,
                // child: Text('Helllo Abdul Aleem'),
                child: Text('Container 1'),
                // margin: EdgeInsetsGeometry.all(20.0),
                // margin: EdgeInsets.symmetric(vertical: 50.0,horizontal: 20.0),
                // margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
                margin: EdgeInsets.only(left: 20),
                // padding: EdgeInsets.all(20.0),
                padding: EdgeInsets.only(top: 20,left: 5),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                // width: 100.0,
                // width: double.infinity,
                color: Colors.blue,
                child: Text('Conatiner 2'),
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.only(top: 20,left: 5),
              ),
              Container(
                height: 100.0,
                // width: 100.0,
                // width: double.infinity,
                color: Colors.redAccent,
                child: Text('Conatiner 3'),
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.only(top: 20,left: 5),
              ),
            ],
          )
        ),
      ),
    );
  }
}