
import 'package:flutter/material.dart';
class StationModel{
  String imagePath;
  String stationName;
  int stationNumber;
  int lineNumber;
  Color color;
  bool isChangable;
  bool isChangableToLine1;
  bool isChangableToLine2;
  bool isChangableToLine3;
  int secondStationNumber;

  StationModel( {required this.imagePath , required this.stationName , required this.stationNumber , required this.lineNumber
  , required this.color ,
     this.isChangable =false, this.isChangableToLine1=false ,
    this.isChangableToLine2=false, this.isChangableToLine3=false , this.secondStationNumber=0});



}
enum DIRECTIONS {
  ADLYMANSOUR,

}

