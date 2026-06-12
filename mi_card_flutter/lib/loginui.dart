// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:mi_card/core/constants/app_strings.dart';

class LoginUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage(AppImages.logo),
                ),
                Text(
                    'Abdul Aleem',
                  style: TextStyle(
                    fontFamily: AppFonts.pacifico,
                    fontSize: 40.0,
                     color: AppColors.white,
                    fontWeight:  FontWeight.bold
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontFamily: AppFonts.sourceSans,
                      fontSize: 20.0,
                      color: AppColors.tealshade,
                      letterSpacing: 2.5,
                      fontWeight:  FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 120.0,
                  child: Divider(
                    color: AppColors.tealshade,
                  ),
                ),
                Card(
                  color: AppColors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: AppColors.teal,
                    ),
                    title: Text('+91 9528 719 631',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: AppFonts.sourceSans,
                          fontSize: 20.0
                      ),
                    ),
                  ),
                ),
                Card(
                  color: AppColors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: AppColors.teal,
                    ),
                    title: Text('+qazialeem21@gmail.com',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: AppFonts.sourceSans,
                          fontSize: 20.0
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}