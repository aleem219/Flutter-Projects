import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    // getLocation();
    getData();

  }

  void getLocation() async {
    Location  location = Location();
   await location.getCurrentLocation();
    print('${location.latitude}, ${location.longitude}');
  }

  void getData() async {
    http.Response response = await http.get(
      Uri.parse(
          'http://api.openweathermap.org/data/2.5/weather?lat=37.33233141&lon=-122.0312186&appid=f484c85da8c1e14d4ab4783056ab1c0a'
      ),
    );

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);


      double temperature = decodedData['main']['temp'];
      int condition = decodedData['weather'][0]['id'];
      String cityName = decodedData['name'];


      print(temperature);
    } else {
      print('Failed to load data: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold();
  }
}
