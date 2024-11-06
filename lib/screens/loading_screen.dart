import 'package:clima/screens/city_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    getLocation();
  }

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition();
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    String myMargin = "abc";

    try {
      double myMarginAsADouble = double.parse(myMargin);
      return Scaffold(
        body: Container(
          margin: EdgeInsets.all(myMarginAsADouble),
          color: Colors.red,
        ),
      );
    } catch (e) {
      print(e);
      return Scaffold(
        body: Container(
          margin: EdgeInsets.all(30),
          color: Colors.red,
        ),
      );
    }
  }
}
