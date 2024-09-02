

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkkk/Start_trip_screen.dart';
import 'package:kkkk/constants/line1_stations.dart';
import 'package:kkkk/widgets/line_draw_widget.dart';

import 'controller/app_language.dart';
import 'models/line1_model.dart';
class TripDetailsWithScrollScreen extends StatefulWidget {
  bool isLine3;
  // final String station1;
  // TripDetailsScreen(this.station1) ;
  final StationModel firstStationModel;
  final StationModel secondStationModel;
  TripDetailsWithScrollScreen({ required this.firstStationModel ,required this.secondStationModel , this.isLine3=false ,
  });
  // const TripDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TripDetailsWithScrollScreen> createState() => _TripDetailsWithScrollScreenState();
}

class _TripDetailsWithScrollScreenState extends State<TripDetailsWithScrollScreen> {
  // bool isChangable=false;
  final itemHeight = 200.0;
  int topIndex = 0;
  // late final ScrollController constroller = ScrollController()
  //   ..addListener(() {
  //     final currentPoss = constroller.offset;
  //     topIndex = currentPoss ~/ itemHeight;
  //     setState(() {});
  //   });
  // ScrollController _scrollController = ScrollController();
  var stationNumbers = 0 ;
  bool isNegative = false;
  var firstStationNumber =0 ;
  var secondStationNumber =0 ;
  var correspondingStationNumber=0;
  // List<StationModel> tripDetailsList =[];

  var ticketPrice = 0 ;
  var ticketColor = '' ;

  bool isLine3 =false ;
  var ticketString ='' ;

  // @override
  // void initState() {
  //   super.initState();
  // }

  int calculatePrice(int numbers){
    if(numbers <= 9) {
      return 8;
    }if(numbers > 9 && numbers<= 16) {
      return 10;
    }if(numbers > 16 && numbers<= 23) {
      return 15;
    }if(numbers > 23) {
      return 20;
    }
    return 5;
  }
  String calculateTicketColor(int numbers){
    if(numbers <= 9) {
      return 'assets/images/yellow_ticket.jpg';
    }if(numbers > 9 && numbers<= 16) {
      return 'assets/images/green_ticket.jpg';
    }if(numbers > 16 && numbers<= 23) {
      return 'assets/images/red_ticket.jpg';
    }if(numbers > 23) {
      return 'assets/images/blue_ticket.jpg';
    }
    return 'assets/images/yellow_ticket.jpg';
  }

  int calculatePriceLine3(int numbers)
  {
    if(numbers <= 9) {
      return 8;
    }if(numbers > 9 && numbers<= 16) {
      return 10;
    }if(numbers > 16 && numbers<= 23) {
      return 15;
    }if(numbers > 23 ) {
      return 20;
    }
    return 8;
  }
  String calculateTicketColorLine3(int numbers)
  {

    // if(numbers <= 9) {
    //   return 'assets/images/green_ticket.jpg';
    // }if(numbers > 9 && numbers<= 16) {
    //   return 'assets/images/red_ticket.jpg';
    // }if(numbers > 16 ) {
    //   return 'assets/images/blue_ticket.jpg';
    // }
    if(numbers <= 9) {
      return 'assets/images/yellow_ticket.jpg';
    }if(numbers > 9 && numbers<= 16) {
      return 'assets/images/green_ticket.jpg';
    }if(numbers > 16 && numbers<= 23) {
      return 'assets/images/red_ticket.jpg';
    }if(numbers > 23) {
      return 'assets/images/blue_ticket.jpg';
    }
    return 'assets/images/green_ticket.jpg';
  }
  List<StationModel> firstList=[];
  List<StationModel> secondList=[];
  List<StationModel> tripDetailsList = [];




  Future<bool> _onWillPop() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return StartTripScreen( isBackFromDetails: true,
          location1: '', location2: '',
          firstStationModel: StationModel(imagePath: '',
              stationName: '',
              stationNumber: 0, lineNumber: 0,color: Colors.black),
          secondStationModel: StationModel(imagePath: '',
              stationName: '',
              stationNumber: 0,
              lineNumber: 0 , color: Colors.black)) ;
    }));
    return false; //<-- SEE HERE
  }
  List<StationModel> line1List =[];
  List<StationModel> line2List =[];
  List<StationModel> line3List =[];

  // StationModel firstChangableStationModel=StationModel(imagePath: '',
  //     stationName: '', stationNumber: 0,
  //     lineNumber: 0, color: Colors.yellow);
  // StationModel secondChangableStationModel=StationModel(imagePath: '',
  //     stationName: '', stationNumber: 0,
  //     lineNumber: 0, color: Colors.yellow);

  @override
  Widget build(BuildContext context) {


    print('widget.firstStationModel.stationNumber ${widget.firstStationModel.stationNumber} ++++++ ${widget.firstStationModel.lineNumber} ');
   line1List = STATIONLLIST.getRange(0, 35).toList();
       line2List =STATIONLLIST.getRange(35, 55).toList();
    line3List = STATIONLLIST.getRange(55, 78).toList();
    String yellowTicket='Yellow ticket'.tr;
    String redTicket='Red ticket'.tr;
    String greenTicket='Green ticket'.tr;
    String blueTicket ='blue ticket'.tr ;

    final height =MediaQuery.of(context).size.height ;
    final width =MediaQuery.of(context).size.width ;

    Color lineColor= Colors.black;
    bool changeDirection= false;
    var finaldirection='';
    var   toDirection='';
    bool needFirstReverse= false ;
    bool needSecondReverse= false ;
    List<StationModel> reversedFirstList =[];
    List<StationModel> reversedSecondList =[];

    firstStationNumber=widget.firstStationModel.stationNumber;
    secondStationNumber=widget.secondStationModel.stationNumber;
    stationNumbers = secondStationNumber - firstStationNumber;


        if(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==2 )
        {
          lineColor = Colors.yellow;
          changeDirection =true;
          // first line before sadat  done
          if(widget.firstStationModel.stationNumber<= 19){
            firstList = STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1,
                19).toList() ;
            if(widget.secondStationModel.stationNumber <=46 && widget.secondStationModel.stationNumber>=36  )
            {
              toDirection='Shubra Al Khaimah Direction';
              secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                  45).toList() ;
              // print('secondList  before reverse${secondList[1].stationName}');

              // print('secondList  after reverse${secondList[1].stationName}');
              needSecondReverse =true ;
              reversedSecondList = secondList.reversed.toList() ;
            }
            if(widget.secondStationModel.stationNumber <=55  &&widget.secondStationModel.stationNumber >=46 )
            {
              toDirection='Al-Munib Direction';

              secondList= STATIONLLIST.getRange(46,
                  widget.secondStationModel.stationNumber
              ).toList() ;
              // print('secondList ${secondList[3].stationName}');

            }
          }
          // first line after shuhadaa
          if(widget.firstStationModel.stationNumber <=35 && widget.firstStationModel.stationNumber>= 22 )
          {
            firstList = STATIONLLIST.getRange(21,
                widget.firstStationModel.stationNumber).toList() ;

            needFirstReverse =true;
            reversedFirstList = firstList.reversed.toList();

            if(widget.secondStationModel.stationNumber <=43 && widget.secondStationModel.stationNumber>=36  )
            {
              toDirection='Shubra Al Khaimah Direction';

              secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                  42).toList() ;
              // print('secondList  before reverse${secondList[1].stationName}');
              //
              // print('secondList  after reverse${secondList[1].stationName}');
              needSecondReverse =true ;
              reversedSecondList = secondList.reversed.toList() ;
            }
            if(widget.secondStationModel.stationNumber <=55  &&widget.secondStationModel.stationNumber >=43 )
            {
              toDirection='Al-Munib Direction';

              secondList= STATIONLLIST.getRange(43,
                  widget.secondStationModel.stationNumber
              ).toList() ;
              // print('secondList ${secondList[3].stationName}');

            }

          }
          //from gamal abdelnasser
          if(widget.firstStationModel.stationNumber == 20 && (
              widget.secondStationModel.stationNumber <=44 && widget.secondStationModel.stationNumber >=36)
          ){
            firstList = STATIONLLIST.getRange(19,
                22).toList() ;
            if(widget.secondStationModel.stationNumber <=43 && widget.secondStationModel.stationNumber>=36  )
            {
              toDirection='Shubra Al Khaimah Direction';
              secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                  42).toList() ;

              needSecondReverse =true ;
              reversedSecondList = secondList.reversed.toList() ;
            }
            if(widget.secondStationModel.stationNumber == 44)
            {
              toDirection='Al-Munib Direction';
              secondList= [
                StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'Ataba', stationNumber: 44, lineNumber: 2, color: Colors.yellow),
              ] ;


            }
          }
          //from gamal abdelnasser
          if(widget.firstStationModel.stationNumber == 20 && (
              widget.secondStationModel.stationNumber <=55 && widget.secondStationModel.stationNumber >=45)
          ){
            firstList = STATIONLLIST.getRange(18,
                20).toList() ;
            needFirstReverse = true ;
            reversedFirstList = firstList.reversed.toList();
            if(widget.secondStationModel.stationNumber <=55 && widget.secondStationModel.stationNumber>=47  )
            {
              toDirection='Al-Munib Direction';
              secondList= STATIONLLIST.getRange(46,
                  widget.secondStationModel.stationNumber).toList() ;

            }
            if(widget.secondStationModel.stationNumber == 45)
            {
              toDirection='Shubra Al Khaimah Direction';
              secondList= STATIONLLIST.getRange(44,
                  45
              ).toList() ;
              needSecondReverse =true ;
              reversedSecondList = secondList.reversed.toList();

            }
          }

          // from Ahmed ORabi
          if(widget.firstStationModel.stationNumber == 21 && (
              widget.secondStationModel.stationNumber <=44 && widget.secondStationModel.stationNumber >=36)
          )
          {
            firstList = STATIONLLIST.getRange(20,
                22).toList() ;
            if(widget.secondStationModel.stationNumber <=43 && widget.secondStationModel.stationNumber>=36  )
            {
              toDirection='Shubra Al Khaimah Direction';
              secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                  42).toList() ;

              needSecondReverse =true ;
              reversedSecondList = secondList.reversed.toList() ;
            }
            if(widget.secondStationModel.stationNumber == 44)
            {
              toDirection='Al-Munib Direction';
              secondList= [
                StationModel(imagePath: 'assets/images/yellow-open-photo.png',
                    stationName: 'station44', stationNumber: 44, lineNumber: 2,
                    color: Colors.yellow,isChangable: true , isChangableToLine3: true),

              ] ;

            }
          }
          // from Ahmed ORabi
          if(widget.firstStationModel.stationNumber == 21 && (
              widget.secondStationModel.stationNumber <=55 && widget.secondStationModel.stationNumber >=45)
          ) {
            firstList = STATIONLLIST.getRange(18,
                21).toList() ;
            needFirstReverse = true ;
            reversedFirstList = firstList.reversed.toList();
            if(widget.secondStationModel.stationNumber == 45)
            {
              toDirection='Shubra Al Khaimah Direction';
              secondList= [
                StationModel(imagePath: 'assets/images/yellow-open-photo.png',
                    stationName: 'station45', stationNumber: 45, lineNumber: 2, color: Colors.yellow),

              ];
            } if(widget.secondStationModel.stationNumber <=55 && widget.secondStationModel.stationNumber >=46)
            {
              toDirection='Al-Munib Direction';
              secondList=STATIONLLIST.getRange(46, widget.secondStationModel.stationNumber).toList();
            }

          }


          stationNumbers = firstList.length + secondList.length ;
          tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
              (needSecondReverse ? reversedSecondList : secondList);

          ticketPrice = calculatePrice(stationNumbers);
          ticketColor = calculateTicketColor(stationNumbers);
          correspondingStationNumber = stationNumbers ;


        }

        // change Direction from line 2 to line 1
        if(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==1)
        {
          lineColor = Colors.red;

          changeDirection =true;
          // second line before shuhadaa
          if(widget.firstStationModel.stationNumber <=43  && widget.firstStationModel.stationNumber>=36 )
          {
            firstList = STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 43).toList();
            if(widget.secondStationModel.stationNumber>22 && widget.secondStationModel.stationNumber<=35){
              toDirection = 'al-Marg Direction';
              secondList = STATIONLLIST.getRange(22 ,widget.secondStationModel.stationNumber).toList();
            }if(widget.secondStationModel.stationNumber<22 && widget.secondStationModel.stationNumber>=1){
              toDirection = 'Helwan Direction';
              secondList = STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1 ,
                  21).toList();
              needSecondReverse =true;
              reversedSecondList=secondList.reversed.toList();
            }
          }
          // second line after sadat
          if(widget.firstStationModel.stationNumber <=55  && widget.firstStationModel.stationNumber>=46 )
          {
            firstList=STATIONLLIST.getRange(45, widget.firstStationModel.stationNumber).toList();
            needFirstReverse=true;
            reversedFirstList=firstList.reversed.toList();
            if(widget.secondStationModel.stationNumber >19 )
            {
              toDirection = 'al-Marg Direction';
              secondList =STATIONLLIST.getRange(19 ,widget.secondStationModel.stationNumber  ).toList();
            }if(widget.secondStationModel.stationNumber <19 )
            {
              toDirection = 'Helwan Direction';
              secondList =STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1 ,
                  18  ).toList();
              needSecondReverse=true;
              reversedSecondList = secondList.reversed.toList();
            }
          }

          // From Ataba
          if(widget.firstStationModel.stationNumber==44)
          {
            if(widget.secondStationModel.stationNumber >=1 && widget.secondStationModel.stationNumber <=20)
            {
              firstList =STATIONLLIST.getRange(43, 46).toList();
              if(widget.secondStationModel.stationNumber == 20){
                toDirection = 'al-Marg Direction';
                secondList=[
                  StationModel(imagePath: 'assets/images/red_open.png',
                      stationName: 'Gamal Abdel Nasser', stationNumber: 20, lineNumber: 1  ,color:  Colors.red),
                ];
              }if(widget.secondStationModel.stationNumber <=19 &&widget.secondStationModel.stationNumber >=1)
              {
                toDirection = 'Helwan Direction';
                secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1 ,
                    18).toList();
                needSecondReverse=true;
                reversedSecondList=secondList.reversed.toList();
              }
            }
            if(widget.secondStationModel.stationNumber >=21 && widget.secondStationModel.stationNumber <=35)
            {
              firstList = STATIONLLIST.getRange(42, 44).toList();
              needFirstReverse=true;
              reversedFirstList = firstList.reversed.toList();
              if(widget.secondStationModel.stationNumber>=22 &&widget.secondStationModel.stationNumber<=35)
              {
                toDirection = 'al-Marg Direction';
                secondList = STATIONLLIST.getRange(22, widget.secondStationModel.stationNumber).toList();
              }if(widget.secondStationModel.stationNumber==21){
                toDirection = 'Helwan Direction';
                secondList=[  StationModel(imagePath: 'assets/images/red_open.png', stationName: 'Ahmed Orabi',
                    stationNumber: 21, lineNumber: 1,color:  Colors.red),
                ];
              }
            }
          }
          // From MOHAMED NAGEEB

          if(widget.firstStationModel.stationNumber==45){
            if(widget.secondStationModel.stationNumber >=1 && widget.secondStationModel.stationNumber <=20)
            {
              firstList =STATIONLLIST.getRange(44, 46).toList();
              if(widget.secondStationModel.stationNumber == 20){
                toDirection = 'al-Marg Direction';
                secondList=[
                  StationModel(imagePath: 'assets/images/red_open.png', stationName: 'Gamal Abdel Nasser',
                      stationNumber: 20, lineNumber: 1,color:  Colors.red),
                ];
              }if(widget.secondStationModel.stationNumber <=19 &&widget.secondStationModel.stationNumber >=1)
              {
                toDirection = 'Helwan Direction';
                secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1 ,
                    18).toList();
                needSecondReverse=true;
                reversedSecondList=secondList.reversed.toList();
              }
            }
            if(widget.secondStationModel.stationNumber >=21 && widget.secondStationModel.stationNumber <=35)
            {
              firstList = STATIONLLIST.getRange(42, 45).toList();
              needFirstReverse=true;
              reversedFirstList = firstList.reversed.toList();
              if(widget.secondStationModel.stationNumber>=22 &&widget.secondStationModel.stationNumber<=35)
              {
                toDirection = 'al-Marg Direction';
                secondList = STATIONLLIST.getRange(22, widget.secondStationModel.stationNumber).toList();
              }if(widget.secondStationModel.stationNumber==21){
                toDirection = 'Helwan Direction';
                secondList=[  StationModel(imagePath: 'assets/images/red_open.png'
                    ,color:  Colors.red ,stationName: 'Ahmed Orabi', stationNumber: 21, lineNumber: 1),
                ];
              }
            }
          }

          stationNumbers = firstList.length + secondList.length ;
          tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
              (needSecondReverse ? reversedSecondList : secondList);

          ticketPrice = calculatePrice(stationNumbers);
          ticketColor = calculateTicketColor(stationNumbers);
          correspondingStationNumber = stationNumbers ;
        }
        //  change Direction from line 1 to line 3
        if(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==3)
        {
          lineColor = Colors.green;
          changeDirection= true;
          if(widget.firstStationModel.stationNumber<=20 ){
            firstList=  STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 20).toList();
            if(widget.secondStationModel.stationNumber <75){
              toDirection='Adly Mansour Direction';
              secondList = STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1, 74).toList();
              needSecondReverse=true;
              reversedSecondList=secondList.reversed.toList();
            }if(widget.secondStationModel.stationNumber >75)
            {
              if(widget.secondStationModel.secondStationNumber >=84){
                print("widget.firstStationModel.secondStationNumber >84");
                secondList= STATIONLLISTWithLine3part1.getRange(75,widget.secondStationModel.stationNumber).toList();

              }if(widget.secondStationModel.secondStationNumber <84 ){
                print("widget.firstStationModel.secondStationNumber  <84");
                secondList= STATIONLLISTWithLine3part2.getRange(75, widget.secondStationModel.stationNumber).toList();
              }
              toDirection='kit kat Direction';
              // secondList = STATIONLLIST.getRange(75, widget.secondStationModel.stationNumber).toList();
            }
          }
          if(widget.firstStationModel.stationNumber>20 )
          {
            firstList=  STATIONLLIST.getRange(19, widget.firstStationModel.stationNumber).toList();
            needFirstReverse=true;
            reversedFirstList=firstList.reversed.toList();
            if(widget.secondStationModel.stationNumber <75){
              toDirection='Adly Mansour Direction';

              secondList = STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1, 74).toList();
              needSecondReverse=true;
              reversedSecondList=secondList.reversed.toList();
            }if(widget.secondStationModel.stationNumber >75)
            {
              if(widget.secondStationModel.secondStationNumber >=84){
                print("widget.firstStationModel.secondStationNumber >84");
                secondList= STATIONLLISTWithLine3part1.getRange(75,widget.secondStationModel.stationNumber).toList();

              }if(widget.secondStationModel.secondStationNumber <84 ){
                print("widget.firstStationModel.secondStationNumber  <84");
                secondList= STATIONLLISTWithLine3part2.getRange(75, widget.secondStationModel.stationNumber).toList();
              }
              toDirection='kit kat Direction';
              // secondList = STATIONLLIST.getRange(75, widget.secondStationModel.stationNumber).toList();
            }
          }

          stationNumbers = firstList.length + secondList.length ;
          tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
              (needSecondReverse ? reversedSecondList : secondList);

          ticketPrice = calculatePriceLine3(stationNumbers);
          ticketColor = calculateTicketColorLine3(stationNumbers);
          correspondingStationNumber = stationNumbers ;
        }

        //  change Direction from line 2 to line 3
        if(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==3)
        {
          lineColor = Colors.green;
          changeDirection = true;
          if(widget.firstStationModel.stationNumber<=44){
            firstList =STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 44).toList();
            if(widget.secondStationModel.stationNumber >74)
            {
              if(widget.secondStationModel.secondStationNumber >=84){
                print("widget.firstStationModel.secondStationNumber >84");
                secondList= STATIONLLISTWithLine3part1.getRange(74,widget.secondStationModel.stationNumber).toList();

              }if(widget.secondStationModel.secondStationNumber <84 ){
                print("widget.firstStationModel.secondStationNumber  <84");
                secondList= STATIONLLISTWithLine3part2.getRange(74, widget.secondStationModel.stationNumber).toList();
              }
              toDirection='kit kat Direction';
              // secondList=STATIONLLIST.getRange(74, widget.secondStationModel.stationNumber).toList();
            }
            if(widget.secondStationModel.stationNumber <74)
            {
              toDirection='Adly Mansour Direction';
              secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                  73).toList();
              needSecondReverse=true;
              reversedSecondList =secondList.reversed.toList();
            }
          }
          if(widget.firstStationModel.stationNumber>44)
          {
            // new calculate after cairo university
            if(widget.firstStationModel.stationNumber>50 &&
                widget.secondStationModel.secondStationNumber>=84)
            {
              firstList =STATIONLLIST.getRange(49, widget.firstStationModel.stationNumber).toList();
              needFirstReverse=true;
              reversedFirstList=firstList.reversed.toList();
              secondList= STATIONLLISTWithLine3part1.getRange(widget.secondStationModel.stationNumber-1,
                  82).toList();
              toDirection='kit-kat Direction';
                needSecondReverse =true;
              reversedSecondList =secondList.reversed.toList();
            }

            if(widget.firstStationModel.stationNumber>50 &&
                widget.secondStationModel.secondStationNumber>=79 &&
                widget.secondStationModel.secondStationNumber<84 )
            {
              firstList =STATIONLLIST.getRange(49, widget.firstStationModel.stationNumber).toList();
              needFirstReverse=true;
              reversedFirstList=firstList.reversed.toList();
              List<StationModel> list= STATIONLLISTWithLine3part2.
              getRange(77,
              widget.secondStationModel.stationNumber).toList();
              List<StationModel> list1 =list.reversed.toList();
              secondList= STATIONLLISTWithLine3part1.getRange(78,
                  82).toList();
              secondList=list1+secondList;
              toDirection='kit-kat Direction';
              needSecondReverse =true;
              reversedSecondList =secondList.reversed.toList();
            }
            if(widget.firstStationModel.stationNumber>50 &&
                (widget.secondStationModel.stationNumber>=76 &&widget.secondStationModel.stationNumber<=78))
            {
              firstList =STATIONLLIST.getRange(49, widget.firstStationModel.stationNumber).toList();
              needFirstReverse=true;
              reversedFirstList=firstList.reversed.toList();

              List<StationModel> list= STATIONLLIST.
              getRange(widget.secondStationModel.stationNumber-1,
                  78).toList();
              List<StationModel> list1 =list.reversed.toList();
              secondList= STATIONLLISTWithLine3part1.getRange(78,
                  82).toList();
              secondList=list+secondList;
              toDirection='kit-kat Direction';
              needSecondReverse =true;
              reversedSecondList =secondList.reversed.toList();
            }

            if((widget.firstStationModel.stationNumber<50 &&widget.firstStationModel.stationNumber>44 )
            &&( widget.secondStationModel.secondStationNumber>=84)
            )
              {
                firstList =STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1,
                    50).toList();
                secondList= STATIONLLISTWithLine3part1.getRange(widget.secondStationModel.stationNumber-1,
                    82).toList();
                toDirection='kit-kat Direction';
                needSecondReverse =true;
                reversedSecondList =secondList.reversed.toList();
              }
            if((widget.firstStationModel.stationNumber<50 &&widget.firstStationModel.stationNumber>45 )
                &&( widget.secondStationModel.secondStationNumber>=79 &&
                    widget.secondStationModel.secondStationNumber<84)
            ){
              firstList =STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1,
                  50).toList();
              List<StationModel> list= STATIONLLISTWithLine3part2.
              getRange(77,
                  widget.secondStationModel.stationNumber).toList();
              List<StationModel> list1 =list.reversed.toList();
              secondList= STATIONLLISTWithLine3part1.getRange(78,
                  82).toList();
              secondList=list1+secondList;
              toDirection='kit-kat Direction';
              needSecondReverse =true;
              reversedSecondList =secondList.reversed.toList();

            }
            if(widget.firstStationModel.stationNumber==49 &&widget.secondStationModel.stationNumber==78){
              firstList =[
                StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station49', stationNumber: 49, lineNumber: 2, color: Colors.yellow),
                StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station50', stationNumber: 50, lineNumber: 2, color: Colors.yellow),
              ];
              List<StationModel> list= STATIONLLISTWithLine3part2.
              getRange(77,
                  widget.secondStationModel.stationNumber).toList();
              List<StationModel> list1 =list.reversed.toList();
              secondList= STATIONLLISTWithLine3part1.getRange(78,
                  82).toList();
              secondList=list1+secondList;
              toDirection='kit-kat Direction';
              needSecondReverse =true;
              reversedSecondList =secondList.reversed.toList();




            }

            else{
                if(widget.firstStationModel.stationNumber>50 ){
                  firstList =STATIONLLIST.getRange(49, widget.firstStationModel.stationNumber).toList();
                  toDirection='kit-kat Direction';

                }
                if((widget.firstStationModel.stationNumber<50&&widget.firstStationModel.stationNumber>44)
                &&(widget.secondStationModel.secondStationNumber>=79)
                ){
                  toDirection='kit-kat Direction';

                  firstList =STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1,
                      50).toList();
                }
                else{
                  firstList =STATIONLLIST.getRange(43, widget.firstStationModel.stationNumber).toList();

                  needFirstReverse=true;
                  reversedFirstList=firstList.reversed.toList();
                }

              if(widget.secondStationModel.stationNumber >74)
              {
                if(widget.secondStationModel.secondStationNumber >=84){
                  print("widget.firstStationModel.secondStationNumber >84");
                  secondList= STATIONLLISTWithLine3part1.getRange(74,widget.secondStationModel.stationNumber).toList();

                }if(widget.secondStationModel.secondStationNumber <84 ){
                  toDirection='kit-kat Direction';
                  print("widget.firstStationModel.secondStationNumber  <84");
                  secondList= STATIONLLISTWithLine3part2.getRange(74, widget.secondStationModel.stationNumber).toList();
                }
                toDirection='kit-kat Direction';
                // secondList=STATIONLLIST.getRange(74, widget.secondStationModel.stationNumber).toList();
              }
              if(widget.secondStationModel.stationNumber <74)
              {
                toDirection='Adly Mansour Direction';
                secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                    73).toList();
                needSecondReverse=true;
                reversedSecondList =secondList.reversed.toList();
              }
            }

          }
          stationNumbers = firstList.length + secondList.length ;
          tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
              (needSecondReverse ? reversedSecondList : secondList);

          ticketPrice = calculatePriceLine3(stationNumbers);
          ticketColor = calculateTicketColorLine3(stationNumbers);
          correspondingStationNumber = stationNumbers ;
        }

        //  change Direction from line 3 to line 1
        if(widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==1)
        {
          lineColor = Colors.red;
          changeDirection=true;
          if(widget.firstStationModel.stationNumber<=75){
            firstList= STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 75).toList();
            if(widget.secondStationModel.stationNumber >20)
            {
              toDirection='al-Marg Direction';
              secondList=STATIONLLIST.getRange(20, widget.secondStationModel.stationNumber).toList();
            }
            if(widget.secondStationModel.stationNumber <20)
            {
              toDirection='Helwan Direction';
              secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                  19).toList();
              needSecondReverse=true;
              reversedSecondList=secondList.reversed.toList();
            }

          }
          if(widget.firstStationModel.stationNumber>75){

            if(widget.firstStationModel.secondStationNumber >=84){
              print("widget.firstStationModel.secondStationNumber >84");
              firstList= STATIONLLISTWithLine3part1.getRange(74, widget.firstStationModel.stationNumber).toList();

            }if(widget.firstStationModel.secondStationNumber <84 ){
              print("widget.firstStationModel.secondStationNumber  <84");
              firstList= STATIONLLISTWithLine3part2.getRange(74, widget.firstStationModel.stationNumber).toList();
            }
            print("firstList ${firstList.length}");
            needFirstReverse=true;
            reversedFirstList=firstList.reversed.toList();
            if(widget.secondStationModel.stationNumber >20)
            {
              toDirection='al-Marg Direction';
              secondList=STATIONLLIST.getRange(20, widget.secondStationModel.stationNumber).toList();
            }
            if(widget.secondStationModel.stationNumber <20)
            {
              toDirection='Helwan Direction';
              secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                  19).toList();
              needSecondReverse=true;
              reversedSecondList=secondList.reversed.toList();
            }

          }
          stationNumbers = firstList.length + secondList.length ;
          tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
              (needSecondReverse ? reversedSecondList : secondList);

          ticketPrice = calculatePriceLine3(stationNumbers);
          ticketColor = calculateTicketColorLine3(stationNumbers);
          correspondingStationNumber = stationNumbers ;
        }

        //  change Direction from line 3 to line 2
        if(widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==2)
        {
          lineColor = Colors.yellow;

          changeDirection= true;
          if(widget.firstStationModel.stationNumber<74)
          {
            firstList=STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 74).toList();
            if(widget.secondStationModel.stationNumber>44)
            {
              toDirection='Al-Munib Direction';
              secondList=STATIONLLIST.getRange(44, widget.secondStationModel.stationNumber).toList();
            }
            if(widget.secondStationModel.stationNumber<44)
            {
              toDirection='Shubra Al Khaimah Direction';
              secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                  43).toList();
              needSecondReverse=true;
              reversedSecondList=secondList.reversed.toList();

            }

          }
          if(widget.firstStationModel.stationNumber>74)

          {
            if(widget.firstStationModel.secondStationNumber>=84 &&
                widget.secondStationModel.stationNumber>50){
              toDirection='Al-Munib Direction';
              secondList=STATIONLLIST.getRange(50, widget.secondStationModel.stationNumber).toList();
             firstList=STATIONLLISTWithLine3part1.getRange(widget.firstStationModel.stationNumber-1,
                 83).toList();
            }
            if((widget.firstStationModel.secondStationNumber<84 &&
                widget.firstStationModel.secondStationNumber>=79) &&
                widget.secondStationModel.stationNumber>50){
              toDirection='Al-Munib Direction';
              secondList=STATIONLLIST.getRange(50, widget.secondStationModel.stationNumber).toList();
              List<StationModel> list= STATIONLLISTWithLine3part2.
              getRange(77,
                  widget.firstStationModel.stationNumber).toList();
              List<StationModel> list1 =list.reversed.toList();
              firstList=STATIONLLISTWithLine3part1.getRange(78,
                  83).toList();
              firstList =list1+firstList;
              // needFirstReverse=true;
              // reversedFirstList=firstList.reversed.toList();

              // reversedFirstList=list1+reversedFirstList;
              // firstList=reversedFirstList+list1;
            }
            if((widget.firstStationModel.stationNumber>=75 &&widget.firstStationModel.stationNumber<=78)
            &&(widget.secondStationModel.stationNumber>50)) {
              toDirection='Al-Munib Direction';
              secondList=STATIONLLIST.getRange(50, widget.secondStationModel.stationNumber).toList();
              firstList=STATIONLLISTWithLine3part1.getRange(78,
                  83).toList();
              List<StationModel> list= STATIONLLIST.
              getRange(widget.firstStationModel.stationNumber-1,
                  78).toList();
              firstList=list+firstList;
              }

            if((widget.firstStationModel.secondStationNumber>=79 &&widget.firstStationModel.secondStationNumber<=83)
                && widget.secondStationModel.stationNumber==49)
              {
                toDirection='Shubra Direction';
                List<StationModel> list1=STATIONLLISTWithLine3part2.getRange
                  (77, widget.firstStationModel.stationNumber).toList();
                List<StationModel> listr=list1.reversed.toList();
                firstList=STATIONLLISTWithLine3part1.getRange(78,
                    83).toList();
                // List<StationModel> list=[
                //   StationModel(imagePath: 'assets/images/last_green.png', stationName: 'station78', stationNumber: 78, lineNumber: 3, color: Colors.green),
                //
                // ];
                firstList=listr+firstList;
                secondList=[
                  StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station49', stationNumber: 49, lineNumber: 2, color: Colors.yellow),

                ];
              }
            if((widget.firstStationModel.stationNumber==78 )
                && widget.secondStationModel.stationNumber==49)
            {
              toDirection='Shubra Direction';
              firstList=STATIONLLISTWithLine3part1.getRange(78,
                  83).toList();
              List<StationModel> list=[
                StationModel(imagePath: 'assets/images/last_green.png', stationName: 'station78', stationNumber: 78, lineNumber: 3, color: Colors.green),

              ];
              firstList=list+firstList;
              secondList=[
                StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station49', stationNumber: 49, lineNumber: 2, color: Colors.yellow),

              ];
            }
            if((widget.firstStationModel.secondStationNumber>=84 &&
                widget.firstStationModel.secondStationNumber<=88) && (widget.secondStationModel.stationNumber<=49 &&
                widget.secondStationModel.stationNumber>=46))
              {
                toDirection='Shubra Direction';

                firstList=STATIONLLISTWithLine3part1.getRange(78,
                    83).toList();
                secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1, 49).toList();
                needSecondReverse=true;
                reversedSecondList=secondList.reversed.toList();
              }


            if(widget.firstStationModel.secondStationNumber >=84){
              print("widget.firstStationModel.secondStationNumber >84");
              firstList= STATIONLLISTWithLine3part1.getRange(74, widget.firstStationModel.stationNumber).toList();

            }
            if(widget.firstStationModel.secondStationNumber <84 ){
              print("widget.firstStationModel.secondStationNumber  <84");
              firstList= STATIONLLISTWithLine3part2.getRange(73, widget.firstStationModel.stationNumber).toList();
            }
            // firstList=STATIONLLIST.getRange(73, widget.firstStationModel.stationNumber).toList();
            needFirstReverse=true;
            reversedFirstList=firstList.reversed.toList();
            if(widget.secondStationModel.stationNumber>44)
            {
              toDirection='Al-Munib Direction';
              secondList=STATIONLLIST.getRange(44, widget.secondStationModel.stationNumber).toList();
            }
            if(widget.secondStationModel.stationNumber<44)
            {
              toDirection='Shubra Al Khaimah Direction';
              secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
                  43).toList();
              needSecondReverse=true;
              reversedSecondList=secondList.reversed.toList();

            }

          }
          stationNumbers = firstList.length + secondList.length ;
          tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
              (needSecondReverse ? reversedSecondList : secondList);

          ticketPrice = calculatePriceLine3(stationNumbers);
          ticketColor = calculateTicketColorLine3(stationNumbers);
          correspondingStationNumber = stationNumbers ;
        }



    if(widget.isLine3){
      print('Line3');
    }

    if(toDirection.contains('Helwan')) {
      finaldirection = 'to Helwan';
    } if(toDirection.contains('Marg')) {
      finaldirection = 'to Marg';
    } if(toDirection.contains('Adly')) {
      finaldirection = 'to Adly Mansour';
    } if(toDirection.contains('kit kat')) {
      finaldirection = 'to Ataba';
    } if(toDirection.contains('Shubra')) {
      finaldirection = 'to Shobra Direction';
    } if(toDirection.contains('Munib')) {
      finaldirection = 'to Moneb';
    }if(toDirection.contains('kit-kat')) {
      finaldirection = 'to kit kat Direction';
    }

    if(widget.firstStationModel.lineNumber ==3 &&widget.secondStationModel.lineNumber==3 ){
      isLine3 = true;
    }

    if (((stationNumbers <0 && isLine3 ==false) &&
        !(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==2)
        &&
        !(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==1)
        && !(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==3)
        && !(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==3)
        && !(widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==1)
        && ! (widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==2))
    )
    {
      firstList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
          widget.firstStationModel.stationNumber).toList()  ;
      // print('tripDetailsList before revers ${tripDetailsList[0].stationName}');
      tripDetailsList = firstList.reversed.toList();
      correspondingStationNumber = -stationNumbers;
      ticketPrice = calculatePrice(correspondingStationNumber);
      ticketColor = calculateTicketColor(correspondingStationNumber);
      // print('stationNumbers ${correspondingStationNumber}');
      isNegative = true;
      // print('isNegative ${isNegative}');
    }

    if((stationNumbers>0 && isNegative==false && isLine3 ==false  &&
        !(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==2)
        &&
        !(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==1)
        && !(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==3)
        && !(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==3)
        && !(widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==1)
        && ! (widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==2))
    )
    {
      print('why why why');
      // firstList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
      //     widget.firstStationModel.stationNumber).toList()  ;
      // // print('tripDetailsList before revers ${tripDetailsList[0].stationName}');
      // tripDetailsList = firstList.reversed.toList();
      // correspondingStationNumber = -stationNumbers;
      // ticketPrice = calculatePrice(correspondingStationNumber);
      // ticketColor = calculateTicketColor(correspondingStationNumber);
      // // print('stationNumbers ${correspondingStationNumber}');
      // isNegative = true;
      // // print('isNegative ${isNegative}');

      tripDetailsList = STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1,
          widget.secondStationModel.stationNumber).toList() ;
      correspondingStationNumber = stationNumbers ;
      ticketPrice = calculatePrice(correspondingStationNumber);
      ticketColor = calculateTicketColor(correspondingStationNumber);

    }

    // calculate for changable stations
    // calculate for line 3

    if (stationNumbers <0 && isLine3 ==true )
    {
      print("hhhhhhhhhhhhhhhhhhh111111111111111");
      if(widget.firstStationModel.secondStationNumber>=84){
        firstList= STATIONLLISTWithLine3part1.getRange(widget.secondStationModel.stationNumber-1,
            widget.firstStationModel.stationNumber).toList()  ;
        // print('tripDetailsList before revers ${tripDetailsList[0].stationName}');
        tripDetailsList=firstList.reversed.toList();
        correspondingStationNumber = -stationNumbers;
        ticketPrice = calculatePriceLine3(correspondingStationNumber);
        ticketColor = calculateTicketColorLine3(correspondingStationNumber);
        // print('stationNumbers ${correspondingStationNumber}');
        isNegative = true;
      }
      if(widget.firstStationModel.secondStationNumber<84){
        firstList= STATIONLLISTWithLine3part2.getRange(widget.secondStationModel.stationNumber-1,
            widget.firstStationModel.stationNumber).toList()  ;
        // print('tripDetailsList before revers ${tripDetailsList[0].stationName}');
        tripDetailsList=firstList.reversed.toList();
        correspondingStationNumber = -stationNumbers;
        ticketPrice = calculatePriceLine3(correspondingStationNumber);
        ticketColor = calculateTicketColorLine3(correspondingStationNumber);
        // print('stationNumbers ${correspondingStationNumber}');
        isNegative = true;
      }

      // print('isNegative ${isNegative}');
    }
    if(stationNumbers>0 && isNegative==false && isLine3 ==true )
    {
      print("hhhhhhhhhhhhhhhhhhh222222222222222222");
      if(widget.secondStationModel.secondStationNumber>=84){
        tripDetailsList = STATIONLLISTWithLine3part1.getRange(widget.firstStationModel.stationNumber-1,
            widget.secondStationModel.stationNumber).toList() ;
        correspondingStationNumber =stationNumbers ;
        ticketPrice = calculatePriceLine3(correspondingStationNumber);
        ticketColor = calculateTicketColorLine3(correspondingStationNumber);
      }if(widget.secondStationModel.secondStationNumber<84){
        tripDetailsList = STATIONLLISTWithLine3part2.getRange(widget.firstStationModel.stationNumber-1,
            widget.secondStationModel.stationNumber).toList() ;
        correspondingStationNumber =stationNumbers ;
        ticketPrice = calculatePriceLine3(correspondingStationNumber);
        ticketColor = calculateTicketColorLine3(correspondingStationNumber);
      }


    }
    const start = 'images/';
    const end = "_ticket";

    final startIndex = ticketColor.indexOf(start);
    final endIndex = ticketColor.indexOf(end, startIndex + start.length);

    // print('endIndex$endIndex +++++ $startIndex');
    ticketString = (ticketColor.substring(startIndex + start.length, endIndex))+' Ticket';
    if(ticketString.contains('yellow')){
      ticketString=yellowTicket;
    }if(ticketString.contains('red')){
      ticketString=redTicket;
    }if(ticketString.contains('green')){
      ticketString=greenTicket;
    }if(ticketString.contains('blue')){
      ticketString=blueTicket;
    }
    // print('ticketString  $ticketString');
    // print('${widget.firstStationModel.stationNumber}-------${widget.secondStationModel.stationNumber}');
    Color firstLineIconColor =Colors.yellow ;
    Color lastLineIconColor =Colors.yellow ;
    Color middleLineIconColor =Colors.yellow ;

    if(widget.firstStationModel.lineNumber==1){
      firstLineIconColor =Colors.red ;
    }
    if(widget.firstStationModel.lineNumber==2){
      firstLineIconColor =Colors.yellow ;
    }
    if(widget.firstStationModel.lineNumber==3){
      firstLineIconColor =Colors.green ;
    }

    if(widget.secondStationModel.lineNumber==1){
      lastLineIconColor =Colors.red ;
    }
    if(widget.secondStationModel.lineNumber==2){
      lastLineIconColor =Colors.yellow ;
    }
    if(widget.secondStationModel.lineNumber==3){
      lastLineIconColor =Colors.green ;
    }

    if(tripDetailsList.length>2){
      List tempList=[];
      tempList=tripDetailsList.getRange(0, tripDetailsList.length-2).toList();


    }

    print("widget.firstStationModel.secondStationNumber ${widget.firstStationModel.secondStationNumber}");

    return WillPopScope(
      onWillPop: _onWillPop,
      child: GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: (appController){
          return Scaffold(

              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: IconButton(onPressed: _onWillPop,
                          icon:Icon(Icons.arrow_back_outlined ,
                        color: Colors.black,)),
                    ),
                    elevation: 0,
                    expandedHeight: appController.appLocale=='en'? height*47/100:  height*50/100,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.none,
                      background: Container(
                        decoration: BoxDecoration(
                            color:Colors.pinkAccent ,
                            image: DecorationImage(image: AssetImage('assets/images/backgroundImage.png') ,
                                fit: BoxFit.cover)
                        ),
                        height: height*40/100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 90,),

                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 20 ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Flexible(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('start station'.tr , style: TextStyle(fontSize:
                                          appController.appLocale=="ar"  ? 12: 15, color: Colors.red),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('${widget.firstStationModel.stationName}'.tr ,
                                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              // overflow: TextOverflow.visible
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    width:width*44/100 ,
                                  ),
                                  Container(
                                    width: width*15/100,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height:appController.appLocale=='ar' ?32 :24,),
                                        Icon(appController.appLocale=='ar' ?   Icons.keyboard_double_arrow_left_outlined:
                                        Icons.keyboard_double_arrow_right_outlined)
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: width*25/100,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('end station'.tr , style: TextStyle(fontSize:
                                        appController.appLocale=="ar"  ? 12: 15,
                                            color: Colors.red),
                                        ),
                                        SizedBox(height: 5,),
                                        Text('${widget.secondStationModel.stationName}'.tr ,
                                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                            fontWeight: FontWeight.bold ,
                                            fontSize: 18,
                                          ),
                                          overflow: TextOverflow.ellipsis,),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 15,),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20.0) ,
                                        topLeft:Radius.circular(10.0) ) ,
                                    color: Colors.white
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height:appController.appLocale=="ar"  ? 10: 15,),
                                      Padding(
                                        padding:EdgeInsets.only(right: 20.0) ,
                                        child: Text('trip details'.tr , style: TextStyle(
                                            color: Colors.black ,
                                            fontWeight: FontWeight.bold ,
                                            fontSize: appController.appLocale=="ar"  ? 25: 30.0
                                        ),),
                                      ) ,
                                      SizedBox(height:appController.appLocale=="ar"  ? 5: 5.0,) ,
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20.0),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('number of stations'.tr , style: TextStyle(
                                                  color: Colors.black87 , fontSize: 14.0 ,
                                                ),),
                                                SizedBox(height: 5.0,) ,
                                                Text('$correspondingStationNumber' ,
                                                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                        color: Colors.black ,
                                                        fontWeight: FontWeight.bold
                                                        , fontSize: 16
                                                    )
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 20,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('price of ticket'.tr , style: TextStyle(
                                                  color: Colors.black87 , fontSize: 14.0 ,
                                                ),),
                                                SizedBox(height: 5.0,) ,
                                                Row(
                                                  children: [
                                                    Text('${ticketPrice}'.tr ,
                                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                            color: Colors.black ,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 16
                                                        )
                                                    ),
                                                    SizedBox(width:5.0),

                                                    Text('pound'.tr ,
                                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                            color: Colors.black ,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 16
                                                        )
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 55,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('time'.tr , style: TextStyle(
                                                  color: Colors.black87 , fontSize: 14.0 ,
                                                ),),
                                                SizedBox(height: 5.0,) ,
                                                Row(
                                                  children: [
                                                    Text('${3*correspondingStationNumber}',
                                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                            color: Colors.black ,
                                                            fontWeight: FontWeight.bold ,
                                                            fontSize: 16
                                                        )
                                                    ),
                                                    SizedBox(width:5.0),
                                                    Text('minute'.tr,
                                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                            color: Colors.black ,
                                                            fontWeight: FontWeight.bold ,
                                                            fontSize: 16
                                                        )
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],

                                        ),
                                      ),
                                      SizedBox(height:appController.appLocale=="ar"  ? 14: 15.0,),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20.0 ,  ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('your ticket'.tr, style: TextStyle(
                                                  color: Colors.black87 , fontSize: 14.0 ,
                                                ),),
                                                SizedBox(height: 15.0,) ,
                                                Text('$ticketString' ,
                                                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                        color: Colors.black ,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize:appController.appLocale=="ar"  ? 13: 16
                                                    )
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 40,),
                                            Container(
                                              padding: EdgeInsets.only(right: 20.0),
                                              width: 150,
                                              height:  70,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage('$ticketColor'),
                                                      fit: BoxFit.cover)
                                              ),
                                            )
                                          ],

                                        ),
                                      ),
                                    ],),
                                ),
                              ),
                            )
                          ],

                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: tripDetailsList.length ,
                          (context, index) {
                        // print('firstList.length-1${firstList[firstList.length-1].stationName}');
                        // print('finaldirection $finaldirection');
                        if(changeDirection){
                          if(needFirstReverse){
                            if(index== reversedFirstList.length-1){
                              return
                                Padding(
                                    padding: const EdgeInsets.only(left: 25.0 ,right: 20 , ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Stack(
                                                alignment: AlignmentDirectional.bottomCenter,
                                                children:[
                                                  Column(
                                                    children: [
                                                      Stack(alignment: AlignmentDirectional.topCenter,
                                                        children: [
                                                          Stack(alignment: AlignmentDirectional.bottomCenter,
                                                              children: [
                                                                Icon(Icons.circle_outlined, color: reversedFirstList[reversedFirstList.length-1].color,size: 23,) ,
                                                                Container(height: 5,
                                                                  width: 3,color: reversedFirstList[reversedFirstList.length-1].color,)
                                                              ]
                                                          ),
                                                          Container(width: 3,height: 5,color: reversedFirstList[reversedFirstList.length-1].color,)
                                                        ],
                                                      ),
                                                      Container(height: 13,
                                                        width: 3,color: reversedFirstList[reversedFirstList.length-1].color,)

                                                    ],),
                                                  // Container(width: 3,height: 5,color: firstList[firstList.length-1].color,)
                                                ] ,
                                              ),
                                            ),
                                            SizedBox(width: 15,),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(top :3.0, bottom: 8),
                                                child: Text('${reversedFirstList[reversedFirstList.length-1].stationName}'.tr,
                                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18.0,

                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Spacer(),
                                            SizedBox(width:40),
                                          ],),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            Padding(
                                              padding: const EdgeInsets.only(left: 3.0, top: 3),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  // Icon(Icons.circle , size: 12,color: Colors.grey,),
                                                  SizedBox(height: 2.5,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.directions_run ,
                                                        size: 25.0,
                                                      ),
                                                      SizedBox(width:
                                                      10 ,),

                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: lineColor ,
                                                            // currentIndex==0? Colors.red : Colors.transparent ,
                                                            borderRadius: BorderRadius.all(Radius.circular(20.0))

                                                        ),
                                                        child: Padding(
                                                          padding:  EdgeInsets.all(
                                                              10),
                                                          child: Text('$finaldirection'.tr ,style:
                                                          Theme.of(context).textTheme.titleMedium!.copyWith(
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                            // fontSize:  appController.appLocale=='ar' ? 18: 10
                                                          ),
                                                            textAlign: TextAlign.start,
                                                            softWrap: true,
                                                            overflow: TextOverflow.ellipsis,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 2.5,),
                                                  // Icon(Icons.circle , size: 12,color: Colors.grey),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 7,),
                                          ],
                                        ),
                                      ],
                                    )

                                );
                            }
                            if(index==reversedFirstList.length){
                              {
                                if(secondList.length==1)
                                {
                                  if(needSecondReverse==false)
                                  {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 20.0, right: 20,bottom: 10),
                                      child: lastStationWidget(stationName: secondList[0].stationName.tr ,
                                          context: context,
                                          color: secondList[0].color,isArabic: appController.isArabic
                                      ),
                                    );
                                  }
                                  if(needSecondReverse)
                                  { return
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0, right: 20,bottom: 10),
                                      child: lastStationWidget(stationName: reversedSecondList[0].stationName.tr ,
                                          context: context,
                                          color: reversedSecondList[0].color,isArabic: appController.isArabic
                                      ),
                                    );}
                                }
                                if(secondList.length>1)
                                {
                                  return
                                    firstStationAfterChange(context: context ,
                                        stationName: tripDetailsList[firstList.length].stationName.tr ,
                                        color:tripDetailsList[firstList.length].color );
                                }
                              }
                              // return firstStationAfterChange(context: context ,
                              //     stationName: tripDetailsList[reversedFirstList.length].stationName.tr ,
                              //     color:tripDetailsList[reversedFirstList.length].color,isArabic: appController.isArabic );
                            }
                          }
                          if(needFirstReverse==false)
                          {
                            if(index== firstList.length-1){
                              return
                                Padding(
                                    padding: const EdgeInsets.only(left: 25.0 ,right: 20 , ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Stack(
                                                alignment: AlignmentDirectional.bottomCenter,
                                                children:[
                                                  Column(
                                                    children: [
                                                      Stack(alignment: AlignmentDirectional.topCenter,
                                                        children: [
                                                          Stack(alignment: AlignmentDirectional.bottomCenter,
                                                              children: [
                                                                Icon(Icons.circle_outlined, color: firstList[firstList.length-1].color,size: 23,) ,
                                                                Container(height: 5,
                                                                  width: 3,color: firstList[firstList.length-1].color,)
                                                              ]
                                                          ),
                                                          Container(width: 3,height: 5,color: firstList[firstList.length-1].color,)
                                                        ],
                                                      ),
                                                      Container(height: 13,
                                                        width: 3,color: firstList[firstList.length-1].color,)

                                                    ],),
                                                  // Container(width: 3,height: 5,color: firstList[firstList.length-1].color,)
                                                ] ,
                                              ),
                                            ),
                                            SizedBox(width: 15,),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(top :3.0, bottom: 8),
                                                child: Text('${firstList[firstList.length-1].stationName}'.tr,
                                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18.0,

                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Spacer(),
                                            SizedBox(width:40),
                                          ],),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 7,),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 3.0, top: 3),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  // Icon(Icons.circle , size: 12,color: Colors.grey,),
                                                  SizedBox(height: 2.5,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.directions_run ,
                                                        size: 25.0,
                                                      ),
                                                      SizedBox(width:10 ,),

                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: lineColor ,
                                                            // currentIndex==0? Colors.red : Colors.transparent ,
                                                            borderRadius: BorderRadius.all(Radius.circular(20.0))

                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(10),
                                                          child: Text('$finaldirection'.tr ,style:
                                                          Theme.of(context).textTheme.titleMedium!.copyWith(
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                            textAlign: TextAlign.start,
                                                            softWrap: true,
                                                            overflow: TextOverflow.ellipsis,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 2.5,),
                                                  // Icon(Icons.circle , size: 12,color: Colors.grey),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 7,),
                                          ],
                                        ),
                                      ],
                                    )

                                );
                            }
                            if(index==firstList.length)
                            {
                              if(secondList.length==1)
                                {
                                  if(needSecondReverse==false)
                                    {
                                      return Padding(
                                        padding: const EdgeInsets.only(left: 20.0, right: 20,bottom: 10),
                                        child: lastStationWidget(stationName: secondList[0].stationName.tr ,
                                            context: context,
                                            color: secondList[0].color,isArabic: appController.isArabic
                                        ),
                                      );
                                    }
                                  if(needSecondReverse)
                                    { return
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20.0, right: 20,bottom: 10),
                                        child: lastStationWidget(stationName: reversedSecondList[0].stationName.tr ,
                                            context: context,
                                            color: reversedSecondList[0].color,isArabic: appController.isArabic
                                        ),
                                      );}
                                }
                              if(secondList.length>1)
                                {
                                  return
                                    firstStationAfterChange(context: context ,
                                        stationName: tripDetailsList[firstList.length].stationName.tr ,
                                        color:tripDetailsList[firstList.length].color );
                                }
                            }
                          }

                        }

                            if(index==tripDetailsList.length-1){
                              return Padding(
                                padding: const EdgeInsets.only(left: 20.0, right: 20,bottom: 10),
                                child: lastStationWidget(stationName: tripDetailsList[index].stationName.tr ,
                                    context: context,
                                    color: tripDetailsList[index].color,isArabic: appController.isArabic
                                ),
                              );
                            }
                        if(index==0){
                          return Padding(
                            padding: const EdgeInsets.only(left: 20.0 ,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5.0,),
                                Text('Your Trip'.tr , style: TextStyle(
                                  color: Colors.black87 , fontSize: 14.0 ,
                                ),),
                                SizedBox(height: 7.0,),
                                firstStationWidget(stationName: tripDetailsList[0].stationName.tr ,context: context ,
                                    color: tripDetailsList[0].color ,isArabic: appController.isArabic),
                              ],
                            ),
                          );
                        }

                        else
                          return Padding(
                            padding: const EdgeInsets.only(left: 20.0, right: 20),
                            child: middleStationWidget(stationName: tripDetailsList[index].stationName.tr , context: context ,
                                color: tripDetailsList[index].color,isArabic: appController.isArabic),
                          );
                          },

                    ) ,
                  )
                ],
              )
          );
        },
      ),
    );


  }
}
