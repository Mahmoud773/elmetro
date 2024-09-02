// import 'package:flutter/material.dart';
// import 'package:kkkk/Start_trip_screen.dart';
// import 'package:kkkk/constants/line1_stations.dart';
//
// import 'models/line1_model.dart';
// class TripDetailsScreen extends StatefulWidget {
//  bool isLine3;
//
//   // final String station1;
//   // TripDetailsScreen(this.station1) ;
//   final StationModel firstStationModel;
//   final StationModel secondStationModel;
//   TripDetailsScreen({ required this.firstStationModel ,required this.secondStationModel , this.isLine3=false});
//  // const TripDetailsScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TripDetailsScreen> createState() => _TripDetailsScreenState();
// }
//
// class _TripDetailsScreenState extends State<TripDetailsScreen> {
//   final itemHeight = 200.0;
//   int topIndex = 0;
//   late final ScrollController constroller = ScrollController()
//     ..addListener(() {
//       final currentPoss = constroller.offset;
//       topIndex = currentPoss ~/ itemHeight;
//       setState(() {});
//     });
//   ScrollController _scrollController = ScrollController();
//   var stationNumbers = 0 ;
//   bool isNegative = false;
//   var firstStationNumber =0 ;
//   var secondStationNumber =0 ;
//   var correspondingStationNumber=0;
//   // List<StationModel> tripDetailsList =[];
//
//   var ticketPrice = 0 ;
//   var ticketColor = '' ;
//
//   bool isLine3 =false ;
//   var ticketString ='' ;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   int calculatePrice(int numbers){
//    if(numbers <= 9) {
//      return 5;
//    }if(numbers > 9 && numbers<= 16) {
//      return 7;
//    }if(numbers > 16 && numbers<= 25) {
//      return 10;
//   }if(numbers > 25) {
//      return 12;
//    }
//    return 5;
//   }
//   String calculateTicketColor(int numbers){
//     if(numbers <= 9) {
//       return 'assets/images/yellow_ticket.jpg';
//     }if(numbers > 9 && numbers<= 16) {
//       return 'assets/images/green_ticket.jpg';
//     }if(numbers > 16 && numbers<= 25) {
//       return 'assets/images/red_ticket.jpg';
//     }if(numbers > 25) {
//       return 'assets/images/blue_ticket.jpg';
//     }
//     return 'assets/images/yellow_ticket.jpg';
//   }
//
//   int calculatePriceLine3(int numbers)
//   {
//     if(numbers <= 9) {
//       return 7;
//     }if(numbers > 9 && numbers<= 16) {
//       return 10;
//     }if(numbers > 16 && numbers<= 25) {
//       return 12;
//     }if(numbers > 25 ) {
//       return 25;
//     }
//     return 7;
//   }
//   String calculateTicketColorLine3(int numbers)
//   {
//     if(numbers <= 9) {
//       return 'assets/images/green_ticket.jpg';
//     }if(numbers > 9 && numbers<= 16) {
//       return 'assets/images/red_ticket.jpg';
//     }if(numbers > 16 ) {
//       return 'assets/images/blue_ticket.jpg';
//     }
//     return 'assets/images/green_ticket.jpg';
//   }
//   List<StationModel> firstList=[];
//   List<StationModel> secondList=[];
//   List<StationModel> tripDetailsList = [];
//
//
//
//
//   Future<bool> _onWillPop() async {
//     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
//       return StartTripScreen( isBackFromDetails: true,
//           location1: '', location2: '',
//           firstStationModel: StationModel(imagePath: '',
//               stationName: '',
//               stationNumber: 0, lineNumber: 0, color: Colors.black),
//           secondStationModel: StationModel(imagePath: '',
//               stationName: '',
//               stationNumber: 0,
//               lineNumber: 0, color: Colors.black)) ;
//     }));
//     return false; //<-- SEE HERE
//   }
//   @override
//   Widget build(BuildContext context) {
//     Color lineColor= Colors.black;
//     bool changeDirection= false;
//     var   toDirection='';
//     bool needFirstReverse= false ;
//     bool needSecondReverse= false ;
//     List<StationModel> reversedFirstList =[];
//     List<StationModel> reversedSecondList =[];
//
//     firstStationNumber=widget.firstStationModel.stationNumber;
//     secondStationNumber=widget.secondStationModel.stationNumber;
//     stationNumbers = secondStationNumber - firstStationNumber;
//
//     // change Direction from line 1 to line 2
//     if(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==2)
//       {
//         lineColor = Colors.yellow;
//         changeDirection =true;
//             // first line before sadat  done
//             if(widget.firstStationModel.stationNumber<= 19){
//               firstList = STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1,
//                   19).toList() ;
//               if(widget.secondStationModel.stationNumber <=46 && widget.secondStationModel.stationNumber>=36  )
//               {
//                 toDirection='Shubra Al Khaimah Direction';
//                 secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                     45).toList() ;
//                 // print('secondList  before reverse${secondList[1].stationName}');
//
//                 // print('secondList  after reverse${secondList[1].stationName}');
//                 needSecondReverse =true ;
//                 reversedSecondList = secondList.reversed.toList() ;
//               }
//               if(widget.secondStationModel.stationNumber <=55  &&widget.secondStationModel.stationNumber >=46 )
//               {
//                 toDirection='Al-Munib Direction';
//
//                 secondList= STATIONLLIST.getRange(46,
//                     widget.secondStationModel.stationNumber
//                 ).toList() ;
//                 // print('secondList ${secondList[3].stationName}');
//
//               }
//             }
//             // first line after shuhadaa
//             if(widget.firstStationModel.stationNumber <=35 && widget.firstStationModel.stationNumber>= 22 )
//             {
//               firstList = STATIONLLIST.getRange(21,
//                   widget.firstStationModel.stationNumber).toList() ;
//
//               needFirstReverse =true;
//               reversedFirstList = firstList.reversed.toList();
//
//               if(widget.secondStationModel.stationNumber <=43 && widget.secondStationModel.stationNumber>=36  )
//               {
//                 toDirection='Shubra Al Khaimah Direction';
//
//                 secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                     42).toList() ;
//                 // print('secondList  before reverse${secondList[1].stationName}');
//                 //
//                 // print('secondList  after reverse${secondList[1].stationName}');
//                 needSecondReverse =true ;
//                 reversedSecondList = secondList.reversed.toList() ;
//               }
//               if(widget.secondStationModel.stationNumber <=55  &&widget.secondStationModel.stationNumber >=43 )
//               {
//                 toDirection='Al-Munib Direction';
//
//                 secondList= STATIONLLIST.getRange(43,
//                     widget.secondStationModel.stationNumber
//                 ).toList() ;
//                 // print('secondList ${secondList[3].stationName}');
//
//               }
//
//             }
//             //from gamal abdelnasser
//             if(widget.firstStationModel.stationNumber == 20 && (
//                 widget.secondStationModel.stationNumber <=44 && widget.secondStationModel.stationNumber >=36)
//             ){
//               firstList = STATIONLLIST.getRange(19,
//                   22).toList() ;
//               if(widget.secondStationModel.stationNumber <=43 && widget.secondStationModel.stationNumber>=36  )
//               {
//                 toDirection='Shubra Al Khaimah Direction';
//                 secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                     42).toList() ;
//
//                 needSecondReverse =true ;
//                 reversedSecondList = secondList.reversed.toList() ;
//               }
//               if(widget.secondStationModel.stationNumber == 44)
//               {
//                 toDirection='Al-Munib Direction';
//                 secondList= [
//                   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'Ataba', stationNumber: 44, lineNumber: 2),
//                 ] ;
//
//
//               }
//             }
//             //from gamal abdelnasser
//             if(widget.firstStationModel.stationNumber == 20 && (
//                 widget.secondStationModel.stationNumber <=55 && widget.secondStationModel.stationNumber >=45)
//             ){
//               firstList = STATIONLLIST.getRange(18,
//                   20).toList() ;
//                needFirstReverse = true ;
//                reversedFirstList = firstList.reversed.toList();
//               if(widget.secondStationModel.stationNumber <=55 && widget.secondStationModel.stationNumber>=47  )
//               {
//                 toDirection='Al-Munib Direction';
//                 secondList= STATIONLLIST.getRange(46,
//                     widget.secondStationModel.stationNumber).toList() ;
//
//               }
//               if(widget.secondStationModel.stationNumber == 45)
//               {
//                 toDirection='Shubra Al Khaimah Direction';
//                 secondList= STATIONLLIST.getRange(44,
//                     45
//                 ).toList() ;
//                 needSecondReverse =true ;
//                 reversedSecondList = secondList.reversed.toList();
//
//               }
//             }
//
//             // from Ahmed ORabi
//             if(widget.firstStationModel.stationNumber == 21 && (
//                 widget.secondStationModel.stationNumber <=44 && widget.secondStationModel.stationNumber >=36)
//             )
//             {
//               firstList = STATIONLLIST.getRange(20,
//                   22).toList() ;
//               if(widget.secondStationModel.stationNumber <=43 && widget.secondStationModel.stationNumber>=36  )
//               {
//                 toDirection='Shubra Al Khaimah Direction';
//                 secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                     42).toList() ;
//
//                 needSecondReverse =true ;
//                 reversedSecondList = secondList.reversed.toList() ;
//               }
//               if(widget.secondStationModel.stationNumber == 44)
//               {
//                 toDirection='Al-Munib Direction';
//                 secondList= [
//                   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'Ataba', stationNumber: 44, lineNumber: 2),
//                 ] ;
//
//               }
//             }
//             // from Ahmed ORabi
//             if(widget.firstStationModel.stationNumber == 21 && (
//                 widget.secondStationModel.stationNumber <=55 && widget.secondStationModel.stationNumber >=45)
//             ) {
//               firstList = STATIONLLIST.getRange(18,
//                   21).toList() ;
//               needFirstReverse = true ;
//               reversedFirstList = firstList.reversed.toList();
//               if(widget.secondStationModel.stationNumber == 45)
//               {
//                 toDirection='Shubra Al Khaimah Direction';
//                 secondList= [
//                   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'Muhammad Naguib', stationNumber: 45, lineNumber: 2),
//                 ];
//               } if(widget.secondStationModel.stationNumber <=55 && widget.secondStationModel.stationNumber >=46)
//                 {
//                   toDirection='Al-Munib Direction';
//                   secondList=STATIONLLIST.getRange(46, widget.secondStationModel.stationNumber).toList();
//                 }
//
//             }
//
//
//             stationNumbers = firstList.length + secondList.length ;
//             tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
//                 (needSecondReverse ? reversedSecondList : secondList);
//
//             ticketPrice = calculatePrice(stationNumbers);
//             ticketColor = calculateTicketColor(stationNumbers);
//             correspondingStationNumber = stationNumbers ;
//
//       }
//     // change Direction from line 2 to line 1
//     if(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==1)
//           {
//             lineColor = Colors.red;
//
//             changeDirection =true;
//             // second line before shuhadaa
//             if(widget.firstStationModel.stationNumber <=43  && widget.firstStationModel.stationNumber>=36 )
//               {
//                 firstList = STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 43).toList();
//                 if(widget.secondStationModel.stationNumber>22 && widget.secondStationModel.stationNumber<=35){
//                   toDirection = 'al-Marg Direction';
//                   secondList = STATIONLLIST.getRange(22 ,widget.secondStationModel.stationNumber).toList();
//                 }if(widget.secondStationModel.stationNumber<22 && widget.secondStationModel.stationNumber>=1){
//                   toDirection = 'Helwan Direction';
//                   secondList = STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1 ,
//                       21).toList();
//                   needSecondReverse =true;
//                   reversedSecondList=secondList.reversed.toList();
//                 }
//               }
//             // second line after sadat
//             if(widget.firstStationModel.stationNumber <=55  && widget.firstStationModel.stationNumber>=46 )
//               {
//                 firstList=STATIONLLIST.getRange(45, widget.firstStationModel.stationNumber).toList();
//                 needFirstReverse=true;
//                 reversedFirstList=firstList.reversed.toList();
//                 if(widget.secondStationModel.stationNumber >19 )
//                   {
//                     toDirection = 'al-Marg Direction';
//                     secondList =STATIONLLIST.getRange(19 ,widget.secondStationModel.stationNumber  ).toList();
//                   }if(widget.secondStationModel.stationNumber <19 )
//                     {
//                       toDirection = 'Helwan Direction';
//                       secondList =STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1 ,
//                           18  ).toList();
//                       needSecondReverse=true;
//                       reversedSecondList = secondList.reversed.toList();
//                     }
//               }
//
//             // From Ataba
//             if(widget.firstStationModel.stationNumber==44)
//               {
//                 if(widget.secondStationModel.stationNumber >=1 && widget.secondStationModel.stationNumber <=20)
//                   {
//                     firstList =STATIONLLIST.getRange(43, 46).toList();
//                     if(widget.secondStationModel.stationNumber == 20){
//                       toDirection = 'al-Marg Direction';
//                       secondList=[
//                         StationModel(imagePath: 'assets/images/red_open.png', stationName: 'Gamal Abdel Nasser', stationNumber: 20, lineNumber: 1),
//                       ];
//                     }if(widget.secondStationModel.stationNumber <=19 &&widget.secondStationModel.stationNumber >=1)
//                       {
//                         toDirection = 'Helwan Direction';
//                         secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1 ,
//                          18).toList();
//                         needSecondReverse=true;
//                         reversedSecondList=secondList.reversed.toList();
//                       }
//                   }
//                 if(widget.secondStationModel.stationNumber >=21 && widget.secondStationModel.stationNumber <=35)
//                   {
//                     firstList = STATIONLLIST.getRange(42, 44).toList();
//                     needFirstReverse=true;
//                     reversedFirstList = firstList.reversed.toList();
//                     if(widget.secondStationModel.stationNumber>=22 &&widget.secondStationModel.stationNumber<=35)
//                       {
//                         toDirection = 'al-Marg Direction';
//                         secondList = STATIONLLIST.getRange(22, widget.secondStationModel.stationNumber).toList();
//                       }if(widget.secondStationModel.stationNumber==21){
//                       toDirection = 'Helwan Direction';
//                       secondList=[  StationModel(imagePath: 'assets/images/red_open.png', stationName: 'Ahmed Orabi', stationNumber: 21, lineNumber: 1),
//                       ];
//                     }
//                   }
//               }
//             // From MOHAMED NAGEEB
//
//             if(widget.firstStationModel.stationNumber==45){
//               if(widget.secondStationModel.stationNumber >=1 && widget.secondStationModel.stationNumber <=20)
//               {
//                 firstList =STATIONLLIST.getRange(44, 46).toList();
//                 if(widget.secondStationModel.stationNumber == 20){
//                   toDirection = 'al-Marg Direction';
//                   secondList=[
//                     StationModel(imagePath: 'assets/images/red_open.png', stationName: 'Gamal Abdel Nasser', stationNumber: 20, lineNumber: 1),
//                   ];
//                 }if(widget.secondStationModel.stationNumber <=19 &&widget.secondStationModel.stationNumber >=1)
//                 {
//                   toDirection = 'Helwan Direction';
//                   secondList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1 ,
//                       18).toList();
//                   needSecondReverse=true;
//                   reversedSecondList=secondList.reversed.toList();
//                 }
//               }
//               if(widget.secondStationModel.stationNumber >=21 && widget.secondStationModel.stationNumber <=35)
//               {
//                 firstList = STATIONLLIST.getRange(42, 45).toList();
//                 needFirstReverse=true;
//                 reversedFirstList = firstList.reversed.toList();
//                 if(widget.secondStationModel.stationNumber>=22 &&widget.secondStationModel.stationNumber<=35)
//                 {
//                   toDirection = 'al-Marg Direction';
//                   secondList = STATIONLLIST.getRange(22, widget.secondStationModel.stationNumber).toList();
//                 }if(widget.secondStationModel.stationNumber==21){
//                   toDirection = 'Helwan Direction';
//                   secondList=[  StationModel(imagePath: 'assets/images/red_open.png', stationName: 'Ahmed Orabi', stationNumber: 21, lineNumber: 1),
//                   ];
//                 }
//               }
//             }
//
//             stationNumbers = firstList.length + secondList.length ;
//             tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
//                 (needSecondReverse ? reversedSecondList : secondList);
//
//             ticketPrice = calculatePrice(stationNumbers);
//             ticketColor = calculateTicketColor(stationNumbers);
//             correspondingStationNumber = stationNumbers ;
//           }
//      //  change Direction from line 1 to line 3
//     if(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==3)
//     {
//       lineColor = Colors.green;
//       changeDirection= true;
//       if(widget.firstStationModel.stationNumber<=20 ){
//         firstList=  STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 20).toList();
//         if(widget.secondStationModel.stationNumber <75){
//           toDirection='Adly Mansour Direction';
//           secondList = STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1, 74).toList();
//           needSecondReverse=true;
//           reversedSecondList=secondList.reversed.toList();
//         }if(widget.secondStationModel.stationNumber >75)
//           {
//             toDirection='kit kat Direction';
//             secondList = STATIONLLIST.getRange(75, widget.secondStationModel.stationNumber).toList();
//           }
//       }
//       if(widget.firstStationModel.stationNumber>20 )
//       {
//         firstList=  STATIONLLIST.getRange(19, widget.firstStationModel.stationNumber).toList();
//         needFirstReverse=true;
//         reversedFirstList=firstList.reversed.toList();
//         if(widget.secondStationModel.stationNumber <75){
//           toDirection='Adly Mansour Direction';
//
//           secondList = STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1, 74).toList();
//           needSecondReverse=true;
//           reversedSecondList=secondList.reversed.toList();
//         }if(widget.secondStationModel.stationNumber >75)
//         {
//           toDirection='kit kat Direction';
//           secondList = STATIONLLIST.getRange(75, widget.secondStationModel.stationNumber).toList();
//         }
//       }
//
//       stationNumbers = firstList.length + secondList.length ;
//       tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
//           (needSecondReverse ? reversedSecondList : secondList);
//
//       ticketPrice = calculatePriceLine3(stationNumbers);
//       ticketColor = calculateTicketColorLine3(stationNumbers);
//       correspondingStationNumber = stationNumbers ;
//     }
//
//     //  change Direction from line 2 to line 3
//     if(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==3)
//       {
//         lineColor = Colors.green;
//            changeDirection = true;
//         if(widget.firstStationModel.stationNumber<=44){
//           firstList =STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 44).toList();
//           if(widget.secondStationModel.stationNumber >74)
//             {
//               toDirection='kit kat Direction';
//               secondList=STATIONLLIST.getRange(74, widget.secondStationModel.stationNumber).toList();
//             }
//           if(widget.secondStationModel.stationNumber <74)
//           {
//             toDirection='Adly Mansour Direction';
//             secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                 73).toList();
//             needSecondReverse=true;
//             reversedSecondList =secondList.reversed.toList();
//           }
//         }
//         if(widget.firstStationModel.stationNumber>44)
//           {
//             firstList =STATIONLLIST.getRange(43, widget.firstStationModel.stationNumber).toList();
//             needFirstReverse=true;
//             reversedFirstList=firstList.reversed.toList();
//             if(widget.secondStationModel.stationNumber >74)
//             {
//               toDirection='kit kat Direction';
//               secondList=STATIONLLIST.getRange(74, widget.secondStationModel.stationNumber).toList();
//             }
//             if(widget.secondStationModel.stationNumber <74)
//             {
//               toDirection='Adly Mansour Direction';
//               secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                   73).toList();
//               needSecondReverse=true;
//               reversedSecondList =secondList.reversed.toList();
//             }
//           }
//         stationNumbers = firstList.length + secondList.length ;
//         tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
//             (needSecondReverse ? reversedSecondList : secondList);
//
//         ticketPrice = calculatePriceLine3(stationNumbers);
//         ticketColor = calculateTicketColorLine3(stationNumbers);
//         correspondingStationNumber = stationNumbers ;
//       }
//
//     //  change Direction from line 3 to line 1
//     if(widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==1)
//              {
//                lineColor = Colors.red;
//                changeDirection=true;
//                if(widget.firstStationModel.stationNumber<=75){
//                  firstList= STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 75).toList();
//                  if(widget.secondStationModel.stationNumber >20)
//                    {
//                      toDirection='al-Marg Direction';
//                      secondList=STATIONLLIST.getRange(20, widget.secondStationModel.stationNumber).toList();
//                    }
//                  if(widget.secondStationModel.stationNumber <20)
//                  {
//                    toDirection='Helwan Direction';
//                    secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                        19).toList();
//                    needSecondReverse=true;
//                    reversedSecondList=secondList.reversed.toList();
//                  }
//
//                }
//                if(widget.firstStationModel.stationNumber>75){
//                  firstList= STATIONLLIST.getRange(74, widget.firstStationModel.stationNumber).toList();
//                  needFirstReverse=true;
//                  reversedFirstList=firstList.reversed.toList();
//                  if(widget.secondStationModel.stationNumber >20)
//                  {
//                    toDirection='al-Marg Direction';
//                    secondList=STATIONLLIST.getRange(20, widget.secondStationModel.stationNumber).toList();
//                  }
//                  if(widget.secondStationModel.stationNumber <20)
//                  {
//                    toDirection='Helwan Direction';
//                    secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                        19).toList();
//                    needSecondReverse=true;
//                    reversedSecondList=secondList.reversed.toList();
//                  }
//
//                }
//                stationNumbers = firstList.length + secondList.length ;
//                tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
//                    (needSecondReverse ? reversedSecondList : secondList);
//
//                ticketPrice = calculatePriceLine3(stationNumbers);
//                ticketColor = calculateTicketColorLine3(stationNumbers);
//                correspondingStationNumber = stationNumbers ;
//              }
//
//     //  change Direction from line 3 to line 2
//     if(widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==2)
//           {
//             lineColor = Colors.yellow;
//
//             changeDirection= true;
//             if(widget.firstStationModel.stationNumber<74)
//             {
//                  firstList=STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1, 74).toList();
//                  if(widget.secondStationModel.stationNumber>44)
//                    {
//                      toDirection='Al-Munib Direction';
//                      secondList=STATIONLLIST.getRange(44, widget.secondStationModel.stationNumber).toList();
//                    }
//                  if(widget.secondStationModel.stationNumber<44)
//                    {
//                      toDirection='Shubra Al Khaimah Direction';
//                      secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                          43).toList();
//                      needSecondReverse=true;
//                      reversedSecondList=secondList.reversed.toList();
//
//                    }
//
//             }
//             if(widget.firstStationModel.stationNumber>74)
//               {
//                 firstList=STATIONLLIST.getRange(73, widget.firstStationModel.stationNumber).toList();
//                 needFirstReverse=true;
//                 reversedFirstList=firstList.reversed.toList();
//                 if(widget.secondStationModel.stationNumber>44)
//                 {
//                   toDirection='Al-Munib Direction';
//                   secondList=STATIONLLIST.getRange(44, widget.secondStationModel.stationNumber).toList();
//                 }
//                 if(widget.secondStationModel.stationNumber<44)
//                 {
//                   toDirection='Shubra Al Khaimah Direction';
//                   secondList=STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//                       43).toList();
//                   needSecondReverse=true;
//                   reversedSecondList=secondList.reversed.toList();
//
//                 }
//
//               }
//             stationNumbers = firstList.length + secondList.length ;
//             tripDetailsList=(needFirstReverse ? reversedFirstList : firstList)+
//                 (needSecondReverse ? reversedSecondList : secondList);
//
//             ticketPrice = calculatePriceLine3(stationNumbers);
//             ticketColor = calculateTicketColorLine3(stationNumbers);
//             correspondingStationNumber = stationNumbers ;
//           }
//
//       if(widget.isLine3){
//       print('Line3');
//     }
//
//
//
//
//     if(widget.firstStationModel.lineNumber ==3 &&widget.secondStationModel.lineNumber==3 ){
//         isLine3 = true;
//       }
//
//
//
//     if (stationNumbers <0 && isLine3 ==false &&
//         !(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==2)
//         &&
//         !(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==1)
//         && !(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==3)
//     && !(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==3)
//     && !(widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==1)
//     && ! (widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==2)
//     )
//     {
//       print('why why why 1111111111111');
//       tripDetailsList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//           widget.firstStationModel.stationNumber).toList()  ;
//       // print('tripDetailsList before revers ${tripDetailsList[0].stationName}');
//       tripDetailsList.reversed;
//       correspondingStationNumber = -stationNumbers;
//        ticketPrice = calculatePrice(correspondingStationNumber);
//        ticketColor = calculateTicketColor(correspondingStationNumber);
//       // print('stationNumbers ${correspondingStationNumber}');
//       isNegative = true;
//       print('isNegative ${isNegative}');
//     }
//     if(stationNumbers>0 && isNegative==false && isLine3 ==false  &&
//         !(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==2)
//         &&
//         !(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==1)
//         && !(widget.firstStationModel.lineNumber == 1 && widget.secondStationModel.lineNumber==3)
//         && !(widget.firstStationModel.lineNumber == 2 && widget.secondStationModel.lineNumber==3)
//         && !(widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==1)
//         && ! (widget.firstStationModel.lineNumber == 3 && widget.secondStationModel.lineNumber==2)
//
//
//     )
//     {
//       print('why why why');
//       tripDetailsList = STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1,
//           widget.secondStationModel.stationNumber).toList() ;
//       correspondingStationNumber = stationNumbers ;
//        ticketPrice = calculatePrice(correspondingStationNumber);
//        ticketColor = calculateTicketColor(correspondingStationNumber);
//
//     }
//
//     // calculate for line 3
//
//     if (stationNumbers <0 && isLine3 ==true )
//     {
//       tripDetailsList= STATIONLLIST.getRange(widget.secondStationModel.stationNumber-1,
//           widget.firstStationModel.stationNumber).toList()  ;
//       // print('tripDetailsList before revers ${tripDetailsList[0].stationName}');
//       tripDetailsList.reversed;
//       correspondingStationNumber = -stationNumbers;
//       ticketPrice = calculatePriceLine3(correspondingStationNumber);
//       ticketColor = calculateTicketColorLine3(correspondingStationNumber);
//       // print('stationNumbers ${correspondingStationNumber}');
//       isNegative = true;
//       // print('isNegative ${isNegative}');
//     }
//     if(stationNumbers>0 && isNegative==false && isLine3 ==true )
//     {
//       tripDetailsList = STATIONLLIST.getRange(widget.firstStationModel.stationNumber-1,
//           widget.secondStationModel.stationNumber).toList() ;
//       correspondingStationNumber =stationNumbers ;
//       ticketPrice = calculatePriceLine3(correspondingStationNumber);
//       ticketColor = calculateTicketColorLine3(correspondingStationNumber);
//
//     }
//     const start = 'images/';
//     const end = "_ticket";
//
//     final startIndex = ticketColor.indexOf(start);
//     final endIndex = ticketColor.indexOf(end, startIndex + start.length);
//
//     // print('endIndex$endIndex +++++ $startIndex');
//           ticketString = (ticketColor.substring(startIndex + start.length, endIndex))+' Ticket';
//           // print('ticketString  $ticketString');
//     print('${widget.firstStationModel.stationNumber}-------${widget.secondStationModel.stationNumber}');
//     final height = MediaQuery.of(context).size.height;
//
//     return WillPopScope(
//       onWillPop: _onWillPop,
//       child: Scaffold(
//         extendBodyBehindAppBar: true,
//         appBar: AppBar(backgroundColor: Colors.transparent,
//           elevation: 0,
//             leading: IconButton(
//               icon: Icon(Icons.arrow_back, color: Colors.black),
//               onPressed:
//                   () =>
//                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
//                 return StartTripScreen( isBackFromDetails: true,
//                     location1: '', location2: '',
//                     firstStationModel: StationModel(imagePath: '',
//                         stationName: '',
//                         stationNumber: 0, lineNumber: 0),
//                     secondStationModel: StationModel(imagePath: '',
//                         stationName: '',
//                         stationNumber: 0,
//                         lineNumber: 0)) ;
//               })),
//             ),
//         ),
//         body: Container(
//
//           padding: EdgeInsets.only(top: 100.0),
//           decoration: BoxDecoration(
//             color:Colors.pinkAccent ,
//             image: DecorationImage(image: AssetImage('assets/images/backgroundImage.png') ,
//             fit: BoxFit.cover)
//           ),
//           height: height,
//           width: double.infinity,
//           // decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assetName' ,) ,
//           //   fit: BoxFit.cover
//           //
//           // )),
//           child: Container(
//             decoration: BoxDecoration(
//             ),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left:20.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Your Station' , style: TextStyle(fontSize: 15, color: Colors.red),
//                           ),
//                           SizedBox(height: 10,),
//                           Text('${widget.firstStationModel.stationName}' ,
//                             style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(width: 5.0,),
//                       Center(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(height: 27,),
//                             Icon(Icons.keyboard_double_arrow_right_outlined)
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 5.0,),
//                       Flexible(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Where To' , style: TextStyle(fontSize: 15, color: Colors.red),
//                             ),
//                             SizedBox(height: 10,),
//                             Text('${widget.secondStationModel.stationName}' ,
//                               style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                                   fontWeight: FontWeight.bold
//                               ),
//                               overflow: TextOverflow.ellipsis,),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ) ,
//                   SizedBox(height: 10,),
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.only(top: 30.0 , left: 20.0),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(topRight: Radius.circular(20.0) ,
//                               topLeft:Radius.circular(10.0) ) ,
//                           color: Colors.white
//                       ),
//                       child:
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Trip Details' , style: TextStyle(
//                               color: Colors.black ,
//                               fontWeight: FontWeight.bold ,
//                               fontSize: 30.0
//                           ),) ,
//                           SizedBox(height: 10.0,) ,
//                           Padding(
//                             padding: const EdgeInsets.only(right: 20.0),
//                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('No of Stations' , style: TextStyle(
//                                       color: Colors.black87 , fontSize: 14.0 ,
//                                     ),),
//                                     SizedBox(height: 10.0,) ,
//                                     Text('$correspondingStationNumber' ,
//                                         style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                                             color: Colors.black ,
//                                             fontWeight: FontWeight.bold
//                                             , fontSize: 16
//                                         )
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(width: 20,),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Cost' , style: TextStyle(
//                                       color: Colors.black87 , fontSize: 14.0 ,
//                                     ),),
//                                     SizedBox(height: 10.0,) ,
//                                     Text('$ticketPrice LE' ,
//                                         style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                                             color: Colors.black ,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 16
//                                         )
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(width: 55,),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Est duration' , style: TextStyle(
//                                       color: Colors.black87 , fontSize: 14.0 ,
//                                     ),),
//                                     SizedBox(height: 10.0,) ,
//                                     Text('${5* correspondingStationNumber}  Minutes' ,
//                                         style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                                             color: Colors.black ,
//                                             fontWeight: FontWeight.bold ,
//                                             fontSize: 16
//                                         )
//                                     ),
//                                   ],
//                                 ),
//                               ],
//
//                             ),
//                           ),
//                           SizedBox(height: 20.0,),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 20.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Your Ticket' , style: TextStyle(
//                                       color: Colors.black87 , fontSize: 14.0 ,
//                                     ),),
//                                     SizedBox(height: 10.0,) ,
//                                     Text('$ticketString' ,
//                                         style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                                             color: Colors.black ,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 16
//                                         )
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(width: 40,),
//                                 Container(
//                                   padding: EdgeInsets.only(right: 20.0),
//                                   width: 150,
//                                   height: 70,
//                                   decoration: BoxDecoration(
//                                       image: DecorationImage(image: AssetImage('$ticketColor'),
//                                           fit: BoxFit.cover)
//                                   ),
//                                 )
//                               ],
//
//                             ),
//                           ),
//                           SizedBox(height: 20.0,),
//                           Expanded(
//                             child: Container(
//                               padding: EdgeInsets.only(left: 10),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Text('Your Trip' , style: TextStyle(
//                                     color: Colors.black87 , fontSize: 14.0 ,
//                                   ),),
//                                   SizedBox(height: 5.0,),
//                                   Expanded(
//                                     child:
//                                     SingleChildScrollView(
//                                       padding: EdgeInsets.only(left:20),
//                                       child: Column(
//                                          crossAxisAlignment: CrossAxisAlignment.start,
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         children:
//                                         List.generate(tripDetailsList.length, (index) {
//                                           if(changeDirection){
//                                             if(index== firstList.length-1){
//                                               return Column(
//
//                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                                 children: [
//                                                   Row(
//                                                     mainAxisSize: MainAxisSize.min,
//                                                     children: [
//                                                       Image.asset(
//                                                         tripDetailsList[index].imagePath,
//                                                         height: 50,width: 50,
//                                                         alignment: Alignment.centerLeft,
//                                                       ),
//                                                       Text('${tripDetailsList[index].stationName}',
//                                                         style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                                                           fontWeight: FontWeight.bold,
//                                                           fontSize: 18.0,
//
//                                                         ),
//                                                       )
//                                                     ],),
//                                                   SizedBox(height: 7,),
//                                                   Icon(Icons.circle , size: 12,color: Colors.grey,),
//                                                   SizedBox(height: 2.5,),
//                                                   Row(
//                                                     children: [
//                                                       Icon(Icons.directions_run ,
//                                                         size: 25.0,
//                                                       ),
//                                                       SizedBox(width:10 ,),
//
//                                                       Container(
//                                                         decoration: BoxDecoration(
//                                                             color: lineColor ,
//                                                             // currentIndex==0? Colors.red : Colors.transparent ,
//                                                             borderRadius: BorderRadius.all(Radius.circular(20.0))
//
//                                                         ),
//                                                         child: Padding(
//                                                           padding: const EdgeInsets.all(10),
//                                                           child: Text('$toDirection' ,style:
//                                                           Theme.of(context).textTheme.titleMedium!.copyWith(
//                                                               color: Colors.white,
//                                                               fontWeight: FontWeight.bold
//                                                           ),
//                                                             textAlign: TextAlign.start,
//                                                             softWrap: true,
//                                                             overflow: TextOverflow.ellipsis,
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                   SizedBox(height: 2.5,),
//                                                   Icon(Icons.circle , size: 12,color: Colors.grey),
//                                                   SizedBox(height: 7,),
//                                                 ],
//                                               );
//                                             }
//                                           }
//                                           if(tripDetailsList[index].lineNumber==2){
//                                             if(index==0){
//                                               return Align(
//                                                 child: Row(
//                                                   mainAxisAlignment: MainAxisAlignment.start,
//                                                   children: [
//                                                     Flexible(
//                                                       child: Image.asset('assets/images/yellow_start.png',width: 40,
//                                                         height: 40,),
//                                                     ),
//                                                     Text('${tripDetailsList[index].stationName}',
//                                                       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                                                         fontWeight: FontWeight.bold,
//                                                         fontSize: 18.0,
//
//                                                       ),
//                                                     )
//                                                   ],),
//                                                 alignment: Alignment.topLeft,
//                                               );
//                                             }
//
//                                             // if(index==0){
//                                             //   return Row(
//                                             //     mainAxisSize: MainAxisSize.min,
//                                             //     children: [
//                                             //       Icon(Icons.circle , size: 17,color: Colors.red,),
//                                             //       SizedBox(width: 30,),
//                                             //       Text('${tripDetailsList[index].stationName}',
//                                             //         style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                                             //           fontWeight: FontWeight.bold,
//                                             //           fontSize: 18.0,
//                                             //
//                                             //         ),
//                                             //       )
//                                             //     ],);
//                                             // }
//                                             // else{
//                                             //   return Row(
//                                             //   mainAxisSize: MainAxisSize.min,
//                                             //   children: [
//                                             //     Image.asset(
//                                             //       'assets/images/red_open.png',
//                                             //       height: 50,width: 50,
//                                             //       alignment: Alignment.centerLeft,
//                                             //     ),
//                                             //     Text('${tripDetailsList[index].stationName}',
//                                             //       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                                             //         fontWeight: FontWeight.bold,
//                                             //         fontSize: 18.0,
//                                             //
//                                             //       ),
//                                             //     )
//                                             //   ],);
//                                             // }
//
//                                           }
//                                           if(tripDetailsList[index].lineNumber==2){
//                                             return Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Image.asset(
//                                                   'assets/images/yellow-open-photo.png',
//                                                   height: 50,width: 50,
//                                                   alignment: Alignment.centerLeft,
//                                                 ),
//                                                 Text('${tripDetailsList[index].stationName}',
//                                                   style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 18.0,
//
//                                                   ),
//                                                 )
//                                               ],);
//                                           }
//                                           if(tripDetailsList[index].lineNumber==3){
//                                             return Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Image.asset(
//                                                   'assets/images/green_open.png',
//                                                   height: 50,width: 50,
//                                                   alignment: Alignment.centerLeft,
//                                                 ),
//                                                 Text('${tripDetailsList[index].stationName}',
//                                                   style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 18.0,
//
//                                                   ),
//                                                 )
//                                               ],);
//                                           }
//                                           return Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             children: [
//                                               Image.asset(
//                                                 tripDetailsList[index].imagePath,
//                                                 height: 50,width: 50,
//                                                 alignment: Alignment.centerLeft,
//                                               ),
//                                               Text('${tripDetailsList[index].stationName}',
//                                                 style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 18.0,
//
//                                                 ),
//                                               )
//                                             ],);
//                                         }
//                                         ),
//                                         // reverse: stationNumbers <0 ? true : false,
//                                       ),
//                                       reverse:  stationNumbers <0 ? true : false,
//                                     ),
//                                   ),
//                                 ]
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//
//               ],
//             )
//             ),
//           ),
//         ),
//       );
//
//
//   }
// }
