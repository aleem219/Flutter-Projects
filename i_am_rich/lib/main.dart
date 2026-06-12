import 'package:flutter/material.dart';


// The main function is the starting point for all our flutter apps.
void main() {
  runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              title: Text('I am Rich'),
              backgroundColor: Colors.blueGrey[900],
            ),
            body: Center(
              child: Image(
                // image: NetworkImage('https://www.mamp.one/wp-content/uploads/2024/09/image-resources2.jpg'),
                image: AssetImage('images/cat.jpeg'),
              ),

            ),
          )
      ),
   );
}
