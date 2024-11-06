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

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(double.parse(myMargin)),
        color: Colors.red,
      ),
    );
  }
}
