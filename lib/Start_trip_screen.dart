import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkkk/WhereToScreen.dart';
import 'package:kkkk/controller/app_language.dart';
import 'package:kkkk/controller/locale_controller.dart';
import 'package:kkkk/trip_details_screen.dart';
import 'package:kkkk/widgets/main_drawer.dart';

import 'WhereToScreen11.dart';
import 'details_screen_with_Scrollable.dart';
import 'models/line1_model.dart';
class StartTripScreen extends StatefulWidget {

  final isBackFromDetails ;
  // const StartTripScreen({Key? key}) : super(key: key);
  final String location1 ;
  final String location2 ;
  bool isLine3 ;
  final StationModel firstStationModel;
  final StationModel secondStationModel;


  StartTripScreen({ this.isBackFromDetails = false ,required this.location1 , required this.location2 ,
        required this.firstStationModel , required this.secondStationModel , this.isLine3 =false});
  @override
  State<StartTripScreen> createState() => _StartTripScreenState();
}

class _StartTripScreenState extends State<StartTripScreen> {

  StationModel currentStationModel1 =StationModel
    (imagePath: '', stationName: '', stationNumber: 1 , lineNumber: 1, color: Colors.black);

  StationModel currentStationModel2 =StationModel
    (imagePath: '', stationName: '', stationNumber: 1,lineNumber: 1, color: Colors.black);

  static  String routeName='';
  var formKey=GlobalKey<FormState>() ;
  var startLocation='';
  var endLocation='';
  var startLocationController= TextEditingController();
  var endLocationController= TextEditingController();
  StationModel firstChangableStationModel=
  StationModel(imagePath: '', stationName: '', stationNumber: 0,
      lineNumber: 0, color: Colors.yellow);

  Future<bool> _onWillPop() async {
    if (_scaffoldKey.currentState!.isDrawerOpen){
      _scaffoldKey.currentState!.closeDrawer();
    }else
    exit(0);
    return false; //<-- SEE HERE
  }
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    print('build first station model line number ${widget.firstStationModel.lineNumber}');

    print('build method');
    bool isChangable=false;
    final width = MediaQuery.of(context).size.width ;
    final height = MediaQuery.of(context).size.height ;

    firstChangableStationModel=widget.firstStationModel;
    startLocationController.text = widget.location1 ;
    endLocationController.text = widget.location2;
    //changable stations from 1 to 2
    if(widget.firstStationModel.isChangableToLine2 &&widget.secondStationModel.lineNumber==2)
    {
      // isChangable==true;
      if(widget.firstStationModel.stationNumber==19){
        firstChangableStationModel=      StationModel(imagePath: 'assets/images/yellow-open-photo.png',
            stationName: 'station46', stationNumber: 46, lineNumber: 2,
            color: Colors.yellow,isChangable: true , isChangableToLine1: true);

    }
      if(widget.firstStationModel.stationNumber==22){
        firstChangableStationModel=         StationModel(imagePath: 'assets/images/yellow-open-photo.png',
            stationName: 'station43', stationNumber: 43, lineNumber: 2, color: Colors.yellow,
            isChangable: true , isChangableToLine1: true);


    }

    }
      //changable stations from 2 to 1
      if(widget.firstStationModel.isChangableToLine1 &&widget.secondStationModel.lineNumber==1)
    {
      // isChangable==true;
      if(widget.firstStationModel.stationNumber==43){
        firstChangableStationModel=     StationModel(imagePath: 'assets/images/red_open.png', stationName:
        'station22', stationNumber: 22, lineNumber: 1, color: Colors.red,isChangable: true , isChangableToLine2: true);

    }
      if(widget.firstStationModel.stationNumber==46){
        firstChangableStationModel=       StationModel(imagePath: 'assets/images/red_open.png',
            stationName: 'station19', stationNumber: 19, lineNumber: 1,
            color: Colors.red,isChangable: true , isChangableToLine2: true);

    }

    }
    //changable stations from 3 to 1
    if(widget.firstStationModel.isChangableToLine1 &&widget.secondStationModel.lineNumber==1)
    {
      // isChangable==true;
      if(widget.firstStationModel.stationNumber==75){
        firstChangableStationModel=       StationModel(imagePath: 'assets/images/red_open.png',
            stationName: 'station20', stationNumber: 20, lineNumber: 1,
            color: Colors.red,isChangable: true , isChangableToLine3: true);
      }
    }
    //changable stations from 3 to 2
    if(widget.firstStationModel.isChangableToLine2 &&widget.secondStationModel.lineNumber==2)
    {
      // isChangable==true;
      if(widget.firstStationModel.stationNumber==74){
        firstChangableStationModel=  StationModel(imagePath: 'assets/images/yellow-open-photo.png',
            stationName: 'station44', stationNumber: 44, lineNumber: 2,
            color: Colors.yellow,isChangable: true , isChangableToLine3: true);
    }
    }
    //changable from 1 to 3
    if(widget.firstStationModel.isChangableToLine3 &&widget.secondStationModel.lineNumber==3)
    {
      if(widget.firstStationModel.stationNumber==20){
        firstChangableStationModel=     StationModel(imagePath: 'assets/images/green_open.png',
            stationName: 'station75', stationNumber: 75 , lineNumber: 3, color: Colors.green,
            isChangable: true , isChangableToLine1: true);

    }
    }
    //changable from 2 to 3
    if(widget.firstStationModel.isChangableToLine3 &&widget.secondStationModel.lineNumber==3)
    {
      if(widget.firstStationModel.stationNumber==44){
        firstChangableStationModel=       StationModel(imagePath: 'assets/images/green_open.png',
            stationName: 'station74', stationNumber: 74 , lineNumber: 3, color: Colors.green,
            isChangable: true , isChangableToLine2: true);
    }
    }
    var firstText ='Your Station';
    var secondText= 'End Station';
    print('${firstChangableStationModel.stationNumber}');
    return  WillPopScope(
      onWillPop:_onWillPop ,
      child: GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: (controller){
          // print('start trip scrren  ${controller.appLocale}');
          // print('${controller.isArabic}');
          return Scaffold(
            key: _scaffoldKey,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black , size: 30.0),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            drawer: MainDrawer(),

            body: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background_start_trip.png'),
                        fit: BoxFit.cover,

                      )
                  ),
                  child: Container(
                    height: height*50/100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0) ,
                            topRight: Radius.circular(25.0)
                        ) ,
                        color: Colors.white
                    ),
                    margin: EdgeInsets.only(top: height*50/100),
                    padding: EdgeInsets.only(left :20.0 , right: 20,top: 5, bottom: 10),
                    width: double.infinity,
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('page1miniAddree'.tr ,
                                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                    color: Colors.black ,
                                    fontWeight: FontWeight.bold
                                )
                            ) ,
                            SizedBox(height: 15.0,),
                            SizedBox(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context){
                                        return WhereToPage11(chooseStation: 0 ,
                                          currentLocation1:   widget.firstStationModel.stationName.length <3
                                              ?'Start Station' :
                                          '${widget.firstStationModel.stationName}'
                                          ,currentLocation2:
                                          widget.secondStationModel.stationName.length<3? 'end location'
                                              :'${widget.secondStationModel.stationName}' ,
                                          oneStationModel:
                                          widget.firstStationModel.stationName.length<3 ?
                                          StationModel(imagePath: '',
                                              stationName: '',
                                              stationNumber: 0, lineNumber: 0
                                              , color: Colors.blue) : widget.firstStationModel,
                                          secondStationModel: widget.secondStationModel.stationName.length<3 ?
                                          StationModel(imagePath: '',
                                              stationName: '',
                                              stationNumber: 0, lineNumber: 0
                                              , color: Colors.blue):widget.secondStationModel
                                          ,isArabic: controller.isArabic,
                                        ) ;
                                      })
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: width *85/100,
                                  height: 75,
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 1.0 , color: Colors.black12) ,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.do_not_disturb_on_total_silence,
                                        size: 10.0,
                                        color: Colors.red,),
                                      SizedBox(width: 10.0,),
                                      ((widget.firstStationModel.stationName.length<3)
                                          || (widget.isBackFromDetails == true)) ?
                                            Text(   'BUTTONONEminiADDRESS'.tr ,
                                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                )):
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              child: Text('BUTTONONEminiADDRESS'.tr ,

                                                style: TextStyle(color: Colors.black26 ,
                                                    fontSize: 10.0),),
                                            ),
                                            SizedBox(
                                              height: 1.0,
                                            ),
                                            Flexible(
                                              child: Text(((widget.location2.length<3 &&  widget.isBackFromDetails ==false)
                                                  || (widget.isBackFromDetails == true))
                                                  ?'BUTTONONEminiADDRESS'.tr :
                                              '${widget.firstStationModel.stationName}'.tr ,
                                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                                  fontWeight: FontWeight.bold,fontSize:controller.appLocale=="ar" ?16:20
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            SizedBox(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context){
                                        print("widget.firstStationModel.stationName ${widget.firstStationModel.stationName}");
                                        return WhereToPage11(chooseStation: 1 ,
                                          currentLocation1:  widget.firstStationModel.stationName.length <3
                                              ?'Start Station' :
                                          '${widget.firstStationModel.stationName}'
                                          ,currentLocation2:
                                          widget.secondStationModel.stationName.length<3? 'end location'
                                              :'${widget.secondStationModel.stationName}' ,
                                          oneStationModel : widget.firstStationModel.stationName.length<3 ?
                                          StationModel(imagePath: '',
                                              stationName: '',
                                              stationNumber: 0, lineNumber: 0
                                              , color: Colors.blue) : widget.firstStationModel,
                                          secondStationModel: widget.secondStationModel.stationName.length<3 ?
                                          StationModel(imagePath: '',
                                              stationName: '',
                                              stationNumber: 0, lineNumber: 0
                                              , color: Colors.blue):widget.secondStationModel
                                          ,isArabic: controller.isArabic) ;
                                      })
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: width *85/100,
                                  height: 78,
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 1.0 , color: Colors.black12) ,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.do_not_disturb_on_total_silence,
                                        size: 10.0,
                                        color: Colors.red,),
                                      SizedBox(width: 10.0,),
                                      (widget.secondStationModel.stationName.length<3|| (widget.isBackFromDetails == true))
                                      // ((widget.location2.length<3 &&  widget.isBackFromDetails ==false)
                                      //     || (widget.isBackFromDetails == true))
                                          ?
                                             Text(
          'BUTTONtwomainADDRESS'.tr ,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.bold,
          ),
          )
                                          :
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                              Flexible(
                                                child: Text('BUTTONtwomainADDRESS'.tr ,
                                                  style: TextStyle(color: Colors.black26 ,
                                                      fontSize: 10.0),),
                                              ),
                                            SizedBox(
                                              height: 3.0,
                                            ),
                                            Flexible(
                                              child: Text(((widget.location2.length<3 &&  widget.isBackFromDetails ==false)
                                                  || (widget.isBackFromDetails == true))
                                                  ?'BUTTONtwomainADDRESS'.tr : '${widget.location2}'.tr,
                                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                                  fontWeight: FontWeight.bold,fontSize:controller.appLocale=="ar" ?16:20
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),


                            ),
                            SizedBox(height: 15),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 2.0 , color: Colors.pinkAccent),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)) ,
                              ),
                              height: 70,
                              color:(
                                  (widget.firstStationModel.stationName.length >3) &&(widget.secondStationModel
                                      .stationName.length> 3))
                                  ?Colors.red : Colors.white,
                              minWidth: width*85/100,
                              child: Text('Calculate button'.tr, style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                color: (
                                    (widget.firstStationModel.stationName.length >3) &&(widget.secondStationModel
                                        .stationName.length> 3))
                                    ?Colors.white : Colors.red,
                              ),
                              ),
                              onPressed: (){

                                if(((widget.firstStationModel.stationName.length >3) &&(widget.secondStationModel
                                    .stationName.length> 3))  &&
                                    (
                                        widget.firstStationModel.stationName !=widget.secondStationModel
                                            .stationName)
                                ) {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context){
                                        return TripDetailsWithScrollScreen(firstStationModel:
                                        firstChangableStationModel,
                                          secondStationModel:
                                          widget.secondStationModel,
                                          isLine3: widget.isLine3 ? true : false,
                                        );
                                      })
                                  );
                                }
                              } ,


                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: height*15/100,
                   left: width*10/100,
                  right: width*10/100,
                  child: Container(
                    width: width,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('page1addree'.tr , style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold ,
                              fontSize: 35
                          ),),
                          Padding(
                            padding:  EdgeInsets.only(top : controller.appLocale=='en'? 10.0: 0),
                            child: Text('Description'.tr , style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold ,
                                color: Colors.black,
                                fontSize: 15
                            ),
                              textAlign: TextAlign.center,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Positioned(
                //   top: height*23/100,
                //   // left: width*13/100,
                //   // right: width*10/100,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Container(
                //         width: width,
                //         child: Center(
                //           child: Text('Description'.tr , style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                //               fontWeight: FontWeight.bold ,
                //               color: Colors.black,
                //               fontSize: 15
                //           ),
                //           textAlign: TextAlign.center,),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),


              ],
            ),


          );
        },

      ),
    );
  }
}
