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
    try {
      somethingThatExpectsLessThan10(12);
      // Position position = await Geolocator.getCurrentPosition();
      // print(position);
    } catch (e) {
      print(e);
    }
  }

  void somethingThatExpectsLessThan10(int n) {
    if (n > 10) {
      throw " n is greater than 10, n should always be greater than 10.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
