
import 'dart:async';

import 'package:flutter/material.dart';

import '../Start_trip_screen.dart';
import '../models/line1_model.dart';
class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);


  @override
  State<SplachScreen> createState() => _SplachScreenState();


}
class _SplachScreenState extends State<SplachScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return StartTripScreen(location1: '', location2: '',
            firstStationModel: StationModel(imagePath: '',
                stationName: '', stationNumber: 1,lineNumber: 1, color: Colors.black),
            secondStationModel: StationModel(imagePath: '', stationName: '',
                stationNumber: 1,lineNumber: 1, color: Colors.black)) ;
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png' ,width: 300 , height: 200,),
      ),
    );
  }
}
