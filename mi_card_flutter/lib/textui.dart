import 'package:flutter/material.dart';

class Textui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Row(
              // verticalDirection: VerticalDirection.down,
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 100.0,
                  // width: 100.0,
                  // width: double.infinity,
                  color: Colors.orange,
                  // child: Text('Helllo Abdul Aleem'),
                  child: Text('Container 1'),
                  // margin: EdgeInsetsGeometry.all(20.0),
                  // margin: EdgeInsets.symmetric(vertical: 50.0,horizontal: 20.0),
                  // margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
                  margin: EdgeInsets.only(left: 20),
                  // padding: EdgeInsets.all(20.0),
                  // padding: EdgeInsets.only(top: 20,left: 5),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.blue,
                      child: Text('Container 2'),
                      padding: EdgeInsets.only(top: 20, left: 5),
                    ),

                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.green,
                      child: Text('Container 3'),
                      padding: EdgeInsets.only(top: 20, left: 5),
                    ),
                  ],
                ),

                Container(
                  height: 100.0,
                  // width: 100.0,
                  // width: double.infinity,
                  color: Colors.redAccent,
                  child: Text('Conatiner 4'),
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.only(top: 20,left: 5),
                ),
              ],
            )
        ),
      ),
    );
  }
}
