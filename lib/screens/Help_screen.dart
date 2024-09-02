



import 'package:flutter/material.dart';

import '../Start_trip_screen.dart';
import '../models/line1_model.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  Future<bool> _onWillPop() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return StartTripScreen( isBackFromDetails: true,
          location1: '', location2: '',
          firstStationModel: StationModel(imagePath: '',
              stationName: '',
              stationNumber: 0, lineNumber: 0, color: Colors.black),
          secondStationModel: StationModel(imagePath: '',
              stationName: '',
              stationNumber: 0,
              lineNumber: 0, color: Colors.black)) ;
    }));
    return false; //<-- SEE HERE
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return StartTripScreen(location1: '', location2: '',
                      firstStationModel: StationModel(imagePath: '',
                          stationName: '', stationNumber: 1,lineNumber: 1, color: Colors.black),
                      secondStationModel: StationModel(imagePath: '', stationName: '',
                          stationNumber: 1,lineNumber: 1, color: Colors.black)) ;
                }));
              }
          ),
          centerTitle: true,
          title: Text('Help' , style:
          Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.share, color: Colors.red),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ),
        body: Container(
          // padding: EdgeInsets.all(30),
          // child: Image.asset('assets/images/hhhh.jpeg' ,
          //   // width: double.infinity,
          //   //   height: height*90/100,
          //   width: width*95/100,
          //   height: height*95/100,
          //   fit: BoxFit.fill,
          //
          // ),
        ),
      ),
    );
  }
}
