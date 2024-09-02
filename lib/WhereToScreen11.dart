import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkkk/Start_trip_screen.dart';
import 'package:kkkk/controller/app_language.dart';
import 'package:kkkk/widgets/line_draw_widget.dart';

import 'constants/line1_stations.dart';
import 'models/line1_model.dart';

class WhereToPage11 extends StatefulWidget {
  final String currentLocation1;
  final String currentLocation2;
   final StationModel oneStationModel;
  final StationModel secondStationModel;
  final int chooseStation;
  final bool isArabic;

  // const WhereToPage({Key? key}) : super(key: key);
  WhereToPage11({required this.chooseStation ,
    required this.currentLocation1 ,
    required this.currentLocation2,
        required  this.oneStationModel ,
    required this.secondStationModel ,
    this.isArabic=false });

  @override
  State<WhereToPage11> createState() => _WhereToPage11State();
}

class _WhereToPage11State extends State<WhereToPage11> with SingleTickerProviderStateMixin {
  late TabController controller ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller= TabController(length: 3, vsync: this) ;
    controller.addListener(() {
      setState(() {

      });
    });
  }

  @override
  void dispose() {
controller.dispose();
super.dispose();
  }
  StationModel firstStationModel = StationModel(imagePath: '',
      stationName: '', stationNumber: 1 ,lineNumber: 1, color: Colors.black);
  StationModel secondStationModel = StationModel(imagePath: '',
      stationName: '', stationNumber: 1 ,lineNumber: 1, color: Colors.black);

  List<StationModel> line1List =[];
  List<StationModel> line2List =[];
  List<StationModel> line3List =[];

  List<StationModel> line3part1 =[];
  List<StationModel> line3part2 =[];

  // List<StationModel> stationList=
  // [
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 2', stationNumber: 1),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 3', stationNumber: 2),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 4', stationNumber: 3),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 5', stationNumber: 4),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 6', stationNumber: 5),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 7', stationNumber: 6),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 8', stationNumber: 7),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 9', stationNumber: 8),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 10', stationNumber: 9),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 10', stationNumber: 10),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 10', stationNumber: 11),
  //   StationModel(imagePath: 'assets/images/yellow-open-photo.png', stationName: 'station 10', stationNumber: 12),
  // ] ;

  var location1='';
  var location2='';
  int currentIndex =0;
  // var backColor = Colors.red ;
  // StationModel get getFirstStationModel{
  //   // StationModel firstStationModel =StationModel(imagePath: 'assets/images/yellow-close-photo.png',
  //   //     stationName: '', stationNumber: 1);
  //   if(widget.currentLocation1!='Start Station'){
  //     return firstStationModel= stationList.where((element) => element.stationName
  //     ==widget.currentLocation1) as StationModel;
  //   }
  //   return firstStationModel ;
  // }

  bool isSearching=false;
  List<StationModel> searchList = [];
  List<StationModel> changeStations = [
    StationModel(imagePath: 'assets/images/red_open.png', stationName: 
    'station19', stationNumber: 19, lineNumber: 1, color: Colors.red,isChangable: true , isChangableToLine2: true),
    StationModel(imagePath: 'assets/images/red_open.png', stationName: 'station20',
        stationNumber: 20, lineNumber: 1, color: Colors.red,isChangable: true , isChangableToLine3: true),
    StationModel(imagePath: 'assets/images/red_open.png',
        stationName: 'station22', stationNumber: 22, lineNumber: 1, color: Colors.red,isChangable: true , isChangableToLine2: true),
    StationModel(imagePath: 'assets/images/yellow-open-photo.png',
        stationName: 'station44', stationNumber: 44, lineNumber: 2, color: Colors.yellow,isChangable: true , isChangableToLine3: true),
  ];


  var focus=FocusNode();

  void searchStations(String input){
    input.trim();
    List<StationModel> suggestions= changeStations.where((element) {
      return element.stationName.tr.toLowerCase().startsWith(input);
    }).toList();
    if(suggestions.length>=1){
      setState(() {
        isSearching=true;
        searchList=suggestions;
      });
    }
    if(suggestions.length==0)
      {
        suggestions= STATIONLLIST.where((element) {
          return element.stationName.tr.toLowerCase().startsWith(input);
        }).toList();
        if(suggestions.length>=1){
          setState(() {
            isSearching=true;
            searchList=suggestions;
          });
        }
      }
    if(input.isEmpty){
      setState(() {
        isSearching=false;
        searchList=[];
        focus.unfocus();
      });
    }
  }
         bool isArabic=false ;
  @override
  Widget build(BuildContext context) {

    if(widget.currentLocation1 !='Start Station'){

      if(widget.oneStationModel.secondStationNumber >=84){
        firstStationModel= Line3Part1List.firstWhere((element) =>
        element.stationNumber ==widget.oneStationModel.stationNumber
        );
      }
      if(widget.oneStationModel.secondStationNumber >=79 && widget.oneStationModel.secondStationNumber <=83){
        firstStationModel= Line3Part2List.firstWhere((element) =>
        element.stationNumber ==widget.oneStationModel.stationNumber
        );
      }
      else
        {
          firstStationModel= STATIONLLIST.firstWhere((element) =>
        element.stationNumber ==widget.oneStationModel.stationNumber
        );
        }

      if(Line3Part2List.contains(widget.oneStationModel.stationNumber))
        {
          firstStationModel= Line3Part2List.firstWhere((element) =>
          element.stationNumber ==widget.oneStationModel.stationNumber
          );
        }

      if(Line3Part1List.contains(widget.oneStationModel.stationNumber))
        {
          firstStationModel= Line3Part1List.firstWhere((element) =>
          element.stationNumber ==widget.oneStationModel.stationNumber
          );
        }
        }
    print('firstStationModel station name and line number '
        '${firstStationModel.stationName} +++  ${firstStationModel.lineNumber}');

    line1List = STATIONLLIST.getRange(0, 35).toList();
    line2List =STATIONLLIST.getRange(35, 55).toList();
    line3List = STATIONLLIST.getRange(55, 78).toList();
    line3part2=Line3Part2List;
    line3part1=Line3Part1List;


    // print('${line2List[5].stationName}');

      // StationModel firstStationModel =StationModel(imagePath: 'assets/images/yellow-close-photo.png',
      //     stationName: '', stationNumber: 1);
      if(widget.currentLocation2 !='end location'){

        secondStationModel= STATIONLLIST.firstWhere((element) => element.stationNumber
            ==widget.secondStationModel.stationNumber) ;
      }

    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double sizeWidth = MediaQuery.of(context).size.width;
    double ffem = fem * 0.97;
    final width =MediaQuery.of(context).size.width ;   // void setColor(int ind){


    var textController = TextEditingController();

    return  GetBuilder<AppLanguage>(
      init: AppLanguage(),
        builder: (appController){
        print("appController.isArabic where to ${appController.isArabic}");
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            title: Text( widget.chooseStation == 0 ?'page2addrescurrent'.tr  :'page2addresend'.tr,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,

            ),
            centerTitle: true,),
          body: Column(children: [
            Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
              //   border: Border.all(
              //     width: 1,
              //     color: Colors.black26
              //   )
              // ),
                width: width*80/100,height: 75,
                child:Theme(
                  data: ThemeData(
                    primaryColor: Colors.black26,
                    primaryColorDark: Colors.black26,
                  ),
                  child: TextField(
                    // controller: textController,
                    decoration: InputDecoration(
                      prefixIcon:Icon(Icons.search , color: Colors.black,) ,
                      hintText: 'Search'.tr,
                      border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.teal , width: 1)
                      ),

                    ),
                    onChanged: (_){
                      searchStations(_);
                    } ,
                    focusNode:focus
                    ,

                  ),
                )
            ),
            isSearching ?
            Expanded(
              child: Column(
                  children: [
                    SizedBox(
                      width: width*85/100,
                      height: 10,
                    ),
                    // create widgets for each tab bar here
                    Expanded(
                      child: Container(
                        width: double.infinity ,
                        padding: EdgeInsets.all(10.0),
                        child:  SingleChildScrollView(
                          child: Column(
                              children:
                              List.generate(searchList.length, (index) {
                                return InkWell(
                                    onTap:()
                                    {
                                      if(widget.chooseStation==0){
                                        location1 = searchList[index].stationName;
                                        firstStationModel=StationModel
                                          (imagePath: searchList[index].imagePath,
                                            stationName: searchList[index].stationName,
                                            stationNumber: searchList[index].stationNumber ,
                                            lineNumber: searchList[index].lineNumber,color:searchList[index].color);
                                        secondStationModel=secondStationModel;
                                        location2 = widget.currentLocation2;
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return StartTripScreen(location1: location1,
                                            location2: location2, firstStationModel: firstStationModel,
                                            secondStationModel: secondStationModel ,
                                            isLine3: currentIndex == 2 ?true : false,) ;
                                        }));
                                      }
                                      if(widget.chooseStation==1){
                                        location2=searchList[index].stationName;
                                        secondStationModel= StationModel(imagePath: searchList[index].imagePath,
                                            stationName: searchList[index].stationName,
                                            stationNumber: searchList[index].stationNumber ,
                                            lineNumber: searchList[index].lineNumber,color: searchList[index].color);
                                        firstStationModel =firstStationModel;
                                        location1 = widget.currentLocation1;
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return StartTripScreen(location1: location1,
                                            location2: location2,
                                            firstStationModel: firstStationModel,
                                            secondStationModel: secondStationModel ,
                                            isLine3: currentIndex == 2 ?true : false,) ;
                                        }));
                                      }
                                      // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                    },
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(children: [
                                        Icon(Icons.circle , color: searchList[index].color,size: 23,),
                                        SizedBox(width: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(top :3.0),
                                          child: Text('${searchList[index].stationName}'.tr,
                                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,

                                            ),
                                          ),
                                        ),

                                      ],),
                                    )
                                );


                              })

                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            )
                :Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: width*90/100,
                    height: 50,
                    child: Container(
                      height: 100,
                      child: AppBar(
                        elevation: 0.0,
                        bottom: TabBar(
                          isScrollable: true,
                          controller: controller,
                          // padding: EdgeInsets.,
                          indicatorColor: Colors.transparent,
                          //   onTap: (index){
                          //
                          //   // setState(() {
                          //   //   currentIndex = index;
                          //   // });
                          //   // setColor(index ) ;
                          // }
                          // ,
                          tabs: [
                            Tab(
                              child: Container(
                                child: Text('line1'.tr ,textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color:
                                      controller.index==0 ? Colors.white : Colors.black ,
                                      // currentIndex==0? Colors.white : Colors.black ,
                                      fontSize:appController.appLocale=='en' ?18.0 :14.0,

                                      fontWeight: FontWeight.bold
                                  ),
                                ) ,
                                decoration: BoxDecoration(
                                    color: controller.index == 0? Colors.red : Colors.transparent ,
                                    // currentIndex==0? Colors.red : Colors.transparent ,
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))

                                ),
                                padding: EdgeInsets.symmetric(vertical: 3.0 , horizontal:
                                appController.appLocale=='en' ?10.0 :7.0,
                                ),

                              ),
                            ),
                            Tab(
                              child: Container(
                                child: Flexible(
                                  child: Text('Line2'.tr , textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color:controller.index == 1?Colors.white : Colors.black ,
                                        // currentIndex==1? Colors.white : Colors.black ,fontSize: 18.0
                                        fontSize:appController.appLocale=='en' ?18.0 :14.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ) ,
                                decoration: BoxDecoration(
                                    color:controller.index == 1?Colors.yellow : Colors.transparent ,
                                    // Colors.yellow : Colors.transparent ,
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))

                                ),
                                padding: EdgeInsets.symmetric(vertical: 3.0 , horizontal:
                               10.0),
                              ),

                            ),
                            Tab(
                              child: Container(
                                child: Text('Line3'.tr , textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: controller.index==2? Colors.white : Colors.black ,
                                      // Colors.white : Colors.black ,
                                      fontSize:appController.appLocale=='en' ?18.0 :14.0,
                                      fontWeight: FontWeight.bold

                                  ),
                                ) ,
                                decoration: BoxDecoration(
                                    color: controller.index==2? Colors.green : Colors.transparent ,
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))

                                ),
                                padding: EdgeInsets.symmetric(vertical: 3.0 , horizontal:
                                appController.appLocale=='en' ?10.0 :7.0,
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // create widgets for each tab bar here
                  Expanded(
                    child: Container(
                      width: double.infinity ,
                      padding: EdgeInsets.all(20.0),
                      child: TabBarView(

                        controller: controller,
                        children: [
                          // first tab bar view widget
                          SingleChildScrollView(
                            child: Column(
                                children:
                                List.generate(line1List.length, (index) {
                                  if(line1List[index].stationNumber== 19){
                                    return InkWell(
                                        onTap:(){
                                          if(widget.chooseStation==0){
                                            location1 = line1List[index].stationName;
                                            firstStationModel= StationModel(imagePath: line1List[index].imagePath,
                                                stationName: line1List[index].stationName,
                                                stationNumber: line1List[index].stationNumber ,
                                                lineNumber:line1List[index].lineNumber ,
                                                color: line1List[index].color);
                                            secondStationModel=secondStationModel;
                                            location2 = widget.currentLocation2;
                                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                              return StartTripScreen(location1: location1,
                                                location2: location2, firstStationModel: firstStationModel,
                                                secondStationModel: secondStationModel,
                                                isLine3: currentIndex == 2 ?true : false,) ;
                                            }));
                                          }
                                          if(widget.chooseStation==1){
                                            location2=line1List[index].stationName;
                                            secondStationModel=
                                                StationModel(imagePath: line1List[index].imagePath,
                                                    stationName: line1List[index].stationName,
                                                    stationNumber: line1List[index].stationNumber ,
                                                    lineNumber:line1List[index].lineNumber ,color: line1List[index].color );
                                            firstStationModel =firstStationModel;
                                            location1 = widget.currentLocation1;
                                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                              return StartTripScreen(location1: location1,
                                                location2: location2,
                                                firstStationModel: firstStationModel,
                                                secondStationModel: secondStationModel,
                                                isLine3: currentIndex == 2 ?true : false,) ;
                                            }));
                                          }
                                          // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                        },
                                        child:
                                        changableStations(color:line1List[index].color ,circleColor: Colors.yellow,
                                        stationName: line1List[index].stationName.tr,context: context ,
                                        toLine: 'to line 2'.tr ,isArabic: appController.isArabic, arrowColor: Colors.yellow)
                                    );
                                  }
                                  if(line1List[index].stationNumber== 20){
                                    return InkWell(
                                        onTap:(){
                                          if(widget.chooseStation==0){
                                            location1 = line1List[index].stationName;
                                            firstStationModel= StationModel(imagePath: line1List[index].imagePath,
                                                stationName: line1List[index].stationName,
                                                stationNumber: line1List[index].stationNumber ,
                                                lineNumber:line1List[index].lineNumber ,color: line1List[index].color);
                                            secondStationModel=secondStationModel;
                                            location2 = widget.currentLocation2;
                                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                              return StartTripScreen(location1: location1,
                                                location2: location2, firstStationModel: firstStationModel,
                                                secondStationModel: secondStationModel,
                                                isLine3: currentIndex == 2 ?true : false,) ;
                                            }));
                                          }
                                          if(widget.chooseStation==1){
                                            location2=line1List[index].stationName;
                                            secondStationModel=
                                                StationModel(imagePath: line1List[index].imagePath,
                                                    stationName: line1List[index].stationName,
                                                    stationNumber: line1List[index].stationNumber ,
                                                    lineNumber:line1List[index].lineNumber,color: line1List[index].color );
                                            firstStationModel =firstStationModel;
                                            location1 = widget.currentLocation1;
                                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                              return StartTripScreen(location1: location1,
                                                location2: location2,
                                                firstStationModel: firstStationModel,
                                                secondStationModel: secondStationModel,
                                                isLine3: currentIndex == 2 ?true : false,) ;
                                            }));
                                          }
                                          // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                        },
                                        child:

                                        changableStations(color:line1List[index].color ,circleColor: Colors.green,
                                            stationName: line1List[index].stationName.tr,context: context ,fontsize: 15,
                                            toLine: 'to line 3'.tr ,isArabic: appController.isArabic , arrowColor: Colors.green)

                                    );
                                  }
                                  if(line1List[index].stationNumber== 22){
                                    return InkWell(
                                      onTap:(){
                                        if(widget.chooseStation==0){
                                          location1 = line1List[index].stationName;
                                          firstStationModel= StationModel(imagePath: line1List[index].imagePath,
                                              stationName: line1List[index].stationName,
                                              stationNumber: line1List[index].stationNumber ,
                                              lineNumber:line1List[index].lineNumber,color: line1List[index].color );
                                          secondStationModel=secondStationModel;
                                          location2 = widget.currentLocation2;
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                            return StartTripScreen(location1: location1,
                                              location2: location2, firstStationModel: firstStationModel,
                                              secondStationModel: secondStationModel,
                                              isLine3: currentIndex == 2 ?true : false,) ;
                                          }));
                                        } if(widget.chooseStation==1){
                                          location2=line1List[index].stationName;
                                          secondStationModel=
                                              StationModel(imagePath: line1List[index].imagePath,
                                                  stationName: line1List[index].stationName,
                                                  stationNumber: line1List[index].stationNumber ,
                                                  lineNumber:line1List[index].lineNumber ,color: line1List[index].color);
                                          firstStationModel =firstStationModel;
                                          location1 = widget.currentLocation1;
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                            return StartTripScreen(location1: location1,
                                              location2: location2,
                                              firstStationModel: firstStationModel,
                                              secondStationModel: secondStationModel,
                                              isLine3: currentIndex == 2 ?true : false,) ;
                                          }));
                                        }
                                        // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                      },
                                      child:

                                      changableStations(color:line1List[index].color ,circleColor: Colors.yellow,
                                          stationName: line1List[index].stationName.tr,context: context ,
                                          toLine: 'to line 2'.tr ,isArabic: appController.isArabic, arrowColor: Colors.yellow)
                                    );
                                  }
                                  if(index==0){
                                    return InkWell(
                                        onTap:()
                                        {
                                          if(widget.chooseStation==0){
                                            location1 = line1List[index].stationName;
                                            firstStationModel=StationModel
                                              (imagePath: line1List[index].imagePath,
                                                stationName: line1List[index].stationName,
                                                stationNumber: line1List[index].stationNumber ,
                                                lineNumber: line1List[index].lineNumber,color: line1List[index].color);
                                            secondStationModel=secondStationModel;
                                            location2 = widget.currentLocation2;
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return StartTripScreen(location1: location1,
                                                location2: location2, firstStationModel: firstStationModel,
                                                secondStationModel: secondStationModel ,
                                                isLine3: currentIndex == 2 ?true : false,) ;
                                            }));
                                          } if(widget.chooseStation==1){
                                            location2=line1List[index].stationName;
                                            secondStationModel= StationModel(imagePath: STATIONLLIST[index].imagePath,
                                                stationName: line1List[index].stationName,
                                                stationNumber: line1List[index].stationNumber ,
                                                lineNumber: line1List[index].lineNumber,color: line1List[index].color);
                                            firstStationModel =firstStationModel;
                                            location1 = widget.currentLocation1;
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return StartTripScreen(location1: location1,
                                                location2: location2,
                                                firstStationModel: firstStationModel,
                                                secondStationModel: secondStationModel ,
                                                isLine3: currentIndex == 2 ?true : false,) ;
                                            }));
                                          }
                                          // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                        },
                                        child:
                                        firstStationWidget(stationName:line1List[index].stationName.tr ,
                                            color: line1List[index].color , context: context, isArabic: appController.isArabic)

                                    );
                                  }
                                  if(index==line1List.length-1){
                                    return InkWell(
                                        onTap:()
                                        {
                                          if(widget.chooseStation==0){
                                            location1 = line1List[index].stationName;
                                            firstStationModel=StationModel
                                              (imagePath: line1List[index].imagePath,
                                                stationName: line1List[index].stationName,
                                                stationNumber: line1List[index].stationNumber ,
                                                lineNumber: line1List[index].lineNumber,color: line1List[index].color);
                                            secondStationModel=secondStationModel;
                                            location2 = widget.currentLocation2;
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return StartTripScreen(location1: location1,
                                                location2: location2, firstStationModel: firstStationModel,
                                                secondStationModel: secondStationModel ,
                                                isLine3: currentIndex == 2 ?true : false,) ;
                                            }));
                                          }
                                          if(widget.chooseStation==1){
                                            location2=line1List[index].stationName;
                                            secondStationModel= StationModel(imagePath: STATIONLLIST[index].imagePath,
                                                stationName: line1List[index].stationName,
                                                stationNumber: line1List[index].stationNumber ,
                                                lineNumber: line1List[index].lineNumber,color: line1List[index].color);
                                            firstStationModel =firstStationModel;
                                            location1 = widget.currentLocation1;
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return StartTripScreen(location1: location1,
                                                location2: location2,
                                                firstStationModel: firstStationModel,
                                                secondStationModel: secondStationModel ,
                                                isLine3: currentIndex == 2 ?true : false,) ;
                                            }));
                                          }
                                          // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                        },
                                        child:
                                        lastStationWidget(stationName:line1List[index].stationName.tr ,
                                            color: line1List[index].color , context: context,isArabic: appController.isArabic)

                                    );
                                  }
                                  return InkWell(
                                    onTap:()
                                    {
                                      if(widget.chooseStation==0){
                                        location1 = line1List[index].stationName;
                                        firstStationModel=StationModel
                                          (imagePath: line1List[index].imagePath,
                                            stationName: line1List[index].stationName,
                                            stationNumber: line1List[index].stationNumber ,
                                            lineNumber: line1List[index].lineNumber,color: line1List[index].color);
                                        secondStationModel=secondStationModel;
                                        location2 = widget.currentLocation2;
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return StartTripScreen(location1: location1,
                                            location2: location2, firstStationModel: firstStationModel,
                                            secondStationModel: secondStationModel ,
                                            isLine3: currentIndex == 2 ?true : false,) ;
                                        }));
                                      } if(widget.chooseStation==1){
                                        location2=line1List[index].stationName;
                                        secondStationModel= StationModel(imagePath: STATIONLLIST[index].imagePath,
                                            stationName: line1List[index].stationName,
                                            stationNumber: line1List[index].stationNumber ,
                                            lineNumber: line1List[index].lineNumber,color: line1List[index].color);
                                        firstStationModel =firstStationModel;
                                        location1 = widget.currentLocation1;
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return StartTripScreen(location1: location1,
                                            location2: location2,
                                            firstStationModel: firstStationModel,
                                            secondStationModel: secondStationModel ,
                                            isLine3: currentIndex == 2 ?true : false,) ;
                                        }));
                                      }
                                      // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                    },
                                    child:
                                    middleStationWidget(color: line1List[index].color,
                                        stationName: line1List[index].stationName.tr, context: context
                                    ,isArabic: appController.isArabic),
                                  );
                                })

                            ),
                          ),

                          // second tab bar viiew widget
                          SingleChildScrollView(
                            child: Column(children:
                            List.generate(line2List.length, (index) {
                              if(line2List[index].stationNumber== 43){
                                return InkWell(
                                  onTap:(){
                                    if(widget.chooseStation==0){
                                      location1 = line2List[index].stationName;
                                      firstStationModel= StationModel(imagePath: line2List[index].imagePath,
                                          stationName: line2List[index].stationName,
                                          stationNumber: line2List[index].stationNumber ,
                                          lineNumber:line2List[index].lineNumber ,color: line1List[index].color);
                                      secondStationModel=secondStationModel;
                                      location2 = widget.currentLocation2;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2, firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    } if(widget.chooseStation==1){
                                      location2=line2List[index].stationName;
                                      secondStationModel=
                                          StationModel(imagePath: line2List[index].imagePath,
                                              stationName: line2List[index].stationName,
                                              stationNumber: line2List[index].stationNumber ,
                                              lineNumber:line2List[index].lineNumber ,color: line1List[index].color);
                                      firstStationModel =firstStationModel;
                                      location1 = widget.currentLocation1;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2,
                                          firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    }
                                    // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                  },
                                  child:
                                  changableStations(color:line2List[index].color ,circleColor: Colors.red,
                                      stationName: line2List[index].stationName.tr,context: context ,
                                      toLine: 'to line 1'.tr ,isArabic: appController.isArabic, arrowColor: Colors.red)

                                );
                              }
                              if(line2List[index].stationNumber== 44){
                                return InkWell(
                                  onTap:(){
                                    if(widget.chooseStation==0){
                                      location1 = line2List[index].stationName;
                                      firstStationModel= StationModel(imagePath: line2List[index].imagePath,
                                          stationName: line2List[index].stationName,
                                          stationNumber: line2List[index].stationNumber ,
                                          lineNumber:line2List[index].lineNumber,color: line1List[index].color );
                                      secondStationModel=secondStationModel;
                                      location2 = widget.currentLocation2;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2, firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    } if(widget.chooseStation==1){
                                      location2=line2List[index].stationName;
                                      secondStationModel=
                                          StationModel(imagePath: line2List[index].imagePath,
                                              stationName: line2List[index].stationName,
                                              stationNumber: line2List[index].stationNumber ,
                                              lineNumber:line2List[index].lineNumber ,color: line1List[index].color);
                                      firstStationModel =firstStationModel;
                                      location1 = widget.currentLocation1;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2,
                                          firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    }
                                    // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                  },
                                  child:
                                  changableStations(color:line2List[index].color ,circleColor: Colors.green,
                                      stationName: line2List[index].stationName.tr,context: context ,
                                      toLine: 'to line 3'.tr ,isArabic: appController.isArabic, arrowColor: Colors.green)

                                );
                              }
                              if(line2List[index].stationNumber== 46){
                                return InkWell(
                                  onTap:(){
                                    if(widget.chooseStation==0){
                                      location1 = line2List[index].stationName;
                                      firstStationModel= StationModel(imagePath: line2List[index].imagePath,
                                          stationName: line2List[index].stationName,
                                          stationNumber: line2List[index].stationNumber ,
                                          lineNumber:line2List[index].lineNumber,color: line1List[index].color );
                                      secondStationModel=secondStationModel;
                                      location2 = widget.currentLocation2;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2, firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    } if(widget.chooseStation==1){
                                      location2=line2List[index].stationName;
                                      secondStationModel=
                                          StationModel(imagePath: line2List[index].imagePath,
                                              stationName: line2List[index].stationName,
                                              stationNumber: line2List[index].stationNumber ,
                                              lineNumber:line2List[index].lineNumber,color: line1List[index].color );
                                      firstStationModel =firstStationModel;
                                      location1 = widget.currentLocation1;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2,
                                          firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    }
                                    // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                  },
                                  child:
                                  changableStations(color:line2List[index].color ,circleColor: Colors.red,
                                      stationName: line2List[index].stationName.tr,context: context ,
                                      toLine: 'to line 1'.tr ,isArabic: appController.isArabic, arrowColor: Colors.red)

                                );
                              }
                              if(line2List[index].stationNumber== 50){
                                return InkWell(
                                    onTap:(){
                                      if(widget.chooseStation==0){
                                        location1 = line2List[index].stationName;
                                        firstStationModel= StationModel(imagePath: line2List[index].imagePath,
                                            stationName: line2List[index].stationName,
                                            stationNumber: line2List[index].stationNumber ,
                                            lineNumber:line2List[index].lineNumber,color: line1List[index].color );
                                        secondStationModel=secondStationModel;
                                        location2 = widget.currentLocation2;
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                          return StartTripScreen(location1: location1,
                                            location2: location2, firstStationModel: firstStationModel,
                                            secondStationModel: secondStationModel,
                                            isLine3: currentIndex == 2 ?true : false,) ;
                                        }));
                                      } if(widget.chooseStation==1){
                                        location2=line2List[index].stationName;
                                        secondStationModel=
                                            StationModel(imagePath: line2List[index].imagePath,
                                                stationName: line2List[index].stationName,
                                                stationNumber: line2List[index].stationNumber ,
                                                lineNumber:line2List[index].lineNumber,color: line1List[index].color );
                                        firstStationModel =firstStationModel;
                                        location1 = widget.currentLocation1;
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                          return StartTripScreen(location1: location1,
                                            location2: location2,
                                            firstStationModel: firstStationModel,
                                            secondStationModel: secondStationModel,
                                            isLine3: currentIndex == 2 ?true : false,) ;
                                        }));
                                      }
                                      // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                    },
                                    child:
                                    changableStations(color:line2List[index].color ,circleColor: Colors.green,
                                        stationName: line2List[index].stationName.tr,context: context ,
                                        toLine: 'to line 3'.tr ,isArabic: appController.isArabic, arrowColor: Colors.green)

                                );

                              }
                              if(index==0){
                                return InkWell(
                                  onTap:(){
                                  if(widget.chooseStation==0){
                                    location1 = line2List[index].stationName;
                                    firstStationModel=StationModel
                                      (imagePath: line2List[index].imagePath,
                                        stationName: line2List[index].stationName,
                                        stationNumber: line2List[index].stationNumber ,
                                        lineNumber: line2List[index].lineNumber,color: line1List[index].color);
                                    secondStationModel=secondStationModel;
                                    location2 = widget.currentLocation2;
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return StartTripScreen(location1: location1,
                                        location2: location2, firstStationModel: firstStationModel,
                                        secondStationModel: secondStationModel,
                                        isLine3: currentIndex == 2 ?true : false,) ;
                                    }));
                                  }
                                  if(widget.chooseStation==1){
                                    location2=line2List[index].stationName;
                                    secondStationModel= StationModel(imagePath: line2List[index].imagePath,
                                        stationName: line2List[index].stationName,
                                        stationNumber: line2List[index].stationNumber ,
                                        lineNumber: line2List[index].lineNumber,color: line1List[index].color);
                                    firstStationModel =firstStationModel;
                                    location1 = widget.currentLocation1;
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return StartTripScreen(location1: location1,
                                        location2: location2,
                                        firstStationModel: firstStationModel,
                                        secondStationModel: secondStationModel,
                                        isLine3: currentIndex == 2 ?true : false,) ;
                                    }));
                                  }
                                  // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                },
                                  child: firstStationWidget(color: line2List[index].color,
                                      stationName: line2List[index].stationName.tr, context:context  ,isArabic: appController.isArabic),
                                );
                              }
                              if(index==line2List.length-1){
                                return InkWell(
                                  onTap:(){
                                  if(widget.chooseStation==0){
                                    location1 = line2List[index].stationName;
                                    firstStationModel=StationModel
                                      (imagePath: line2List[index].imagePath,
                                        stationName: line2List[index].stationName,
                                        stationNumber: line2List[index].stationNumber ,
                                        lineNumber: line2List[index].lineNumber,color: line1List[index].color);
                                    secondStationModel=secondStationModel;
                                    location2 = widget.currentLocation2;
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return StartTripScreen(location1: location1,
                                        location2: location2, firstStationModel: firstStationModel,
                                        secondStationModel: secondStationModel,
                                        isLine3: currentIndex == 2 ?true : false,) ;
                                    }));
                                  }
                                  if(widget.chooseStation==1){
                                    location2=line2List[index].stationName;
                                    secondStationModel= StationModel(imagePath: line2List[index].imagePath,
                                        stationName: line2List[index].stationName,
                                        stationNumber: line2List[index].stationNumber ,
                                        lineNumber: line2List[index].lineNumber,color: line1List[index].color);
                                    firstStationModel =firstStationModel;
                                    location1 = widget.currentLocation1;
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return StartTripScreen(location1: location1,
                                        location2: location2,
                                        firstStationModel: firstStationModel,
                                        secondStationModel: secondStationModel,
                                        isLine3: currentIndex == 2 ?true : false,) ;
                                    }));
                                  }
                                  // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                },
                                  child: lastStationWidget(color: line2List[index].color,
                                      stationName: line2List[index].stationName.tr, context: context , isArabic: appController.isArabic),
                                );
                              }
                              return InkWell(
                                onTap:(){
                                  if(widget.chooseStation==0){
                                    location1 = line2List[index].stationName;
                                    firstStationModel=StationModel
                                      (imagePath: line2List[index].imagePath,
                                        stationName: line2List[index].stationName,
                                        stationNumber: line2List[index].stationNumber ,
                                        lineNumber: line2List[index].lineNumber,color: line1List[index].color);
                                    secondStationModel=secondStationModel;
                                    location2 = widget.currentLocation2;
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return StartTripScreen(location1: location1,
                                        location2: location2, firstStationModel: firstStationModel,
                                        secondStationModel: secondStationModel,
                                        isLine3: currentIndex == 2 ?true : false,) ;
                                    }));
                                  }
                                  if(widget.chooseStation==1){
                                    location2=line2List[index].stationName;
                                    secondStationModel= StationModel(imagePath: line2List[index].imagePath,
                                        stationName: line2List[index].stationName,
                                        stationNumber: line2List[index].stationNumber ,
                                        lineNumber: line2List[index].lineNumber,color: line1List[index].color);
                                    firstStationModel =firstStationModel;
                                    location1 = widget.currentLocation1;
                                    print("location1  location1  ${location1}");
                                    print("location1  location1  ${firstStationModel.stationName.tr}");
                                    print("location1  location1  ${firstStationModel.stationNumber}");


                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return StartTripScreen(location1: location1,
                                        location2: location2,
                                        firstStationModel: firstStationModel,
                                        secondStationModel: secondStationModel,
                                        isLine3: currentIndex == 2 ?true : false,) ;
                                    }));
                                  }
                                  // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                },
                                child: middleStationWidget(color: line2List[index].color,
                                    stationName: line2List[index].stationName.tr, context: context,isArabic: appController.isArabic),
                              );
                            })

                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(children:
                            List.generate(line3List.length, (index) {
                              if(line3List[index].stationNumber== 74){
                                return InkWell(
                                  onTap:(){
                                    if(widget.chooseStation==0){
                                      location1 = line3List[index].stationName;
                                      firstStationModel= StationModel(imagePath: line3List[index].imagePath,
                                          stationName: line3List[index].stationName,
                                          stationNumber: line3List[index].stationNumber ,
                                          lineNumber:line3List[index].lineNumber,color: line1List[index].color );
                                      secondStationModel=secondStationModel;
                                      location2 = widget.currentLocation2;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2, firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    } if(widget.chooseStation==1){
                                      location2=line3List[index].stationName;
                                      secondStationModel=
                                          StationModel(imagePath: line3List[index].imagePath,
                                              stationName: line3List[index].stationName,
                                              stationNumber: line3List[index].stationNumber ,
                                              lineNumber:line3List[index].lineNumber,color: line1List[index].color );
                                      firstStationModel =firstStationModel;
                                      location1 = widget.currentLocation1;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2,
                                          firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    }
                                    // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                  },
                                  child:
                                  changableStations(color:line3List[index].color ,circleColor: Colors.yellow,
                                      stationName: line3List[index].stationName.tr,context: context ,
                                      toLine: 'to line 2'.tr ,isArabic: appController.isArabic,arrowColor: Colors.yellow)
                                  ,
                                );
                              }
                              if(line3List[index].stationNumber== 75){
                                return InkWell(
                                    onTap:(){
                                      if(widget.chooseStation==0){
                                        location1 = line3List[index].stationName;
                                        firstStationModel= StationModel(imagePath: line3List[index].imagePath,
                                            stationName: line3List[index].stationName,
                                            stationNumber: line3List[index].stationNumber ,
                                            lineNumber:line3List[index].lineNumber ,color: line1List[index].color);
                                        secondStationModel=secondStationModel;
                                        location2 = widget.currentLocation2;
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                          return StartTripScreen(location1: location1,
                                            location2: location2, firstStationModel: firstStationModel,
                                            secondStationModel: secondStationModel,
                                            isLine3: currentIndex == 2 ?true : false,) ;
                                        }));
                                      } if(widget.chooseStation==1){
                                        location2=line3List[index].stationName;
                                        secondStationModel=
                                            StationModel(imagePath: line3List[index].imagePath,
                                                stationName: line3List[index].stationName,
                                                stationNumber: line3List[index].stationNumber ,
                                                lineNumber:line3List[index].lineNumber,color: line1List[index].color );
                                        firstStationModel =firstStationModel;
                                        location1 = widget.currentLocation1;
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                          return StartTripScreen(location1: location1,
                                            location2: location2,
                                            firstStationModel: firstStationModel,
                                            secondStationModel: secondStationModel,
                                            isLine3: currentIndex == 2 ?true : false,) ;
                                        }));
                                      }
                                      // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                    },
                                    child:
                                    changableStations(color:line3List[index].color ,circleColor: Colors.red,
                                        stationName: line3List[index].stationName.tr,context: context ,fontsize: 15,
                                        toLine: 'to line 1'.tr ,isArabic: appController.isArabic, arrowColor: Colors.red)

                                );
                              }
                              if(index==0){
                                return InkWell(onTap:()
                                {
                                  if(widget.chooseStation==0){
                                    location1 = line3List[index].stationName;
                                    firstStationModel= StationModel(imagePath: line3List[index].imagePath,
                                        stationName: line3List[index].stationName,
                                        stationNumber: line3List[index].stationNumber ,
                                        lineNumber:line3List[index].lineNumber ,color: line1List[index].color);
                                    secondStationModel=secondStationModel;
                                    location2 = widget.currentLocation2;
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                      return StartTripScreen(location1: location1,
                                        location2: location2, firstStationModel: firstStationModel,
                                        secondStationModel: secondStationModel,
                                        isLine3: currentIndex == 2 ?true : false,) ;
                                    }));
                                  } if(widget.chooseStation==1){
                                    location2=line3List[index].stationName;
                                    secondStationModel=
                                        StationModel(imagePath: line3List[index].imagePath,
                                            stationName: line3List[index].stationName,
                                            stationNumber: line3List[index].stationNumber ,
                                            lineNumber:line3List[index].lineNumber,color: line1List[index].color );
                                    firstStationModel =firstStationModel;
                                    location1 = widget.currentLocation1;
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                      return StartTripScreen(location1: location1,
                                        location2: location2,
                                        firstStationModel: firstStationModel,
                                        secondStationModel: secondStationModel,
                                        isLine3: currentIndex == 2 ?true : false,) ;
                                    }));
                                  }
                                  // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                },
                                  child: firstStationWidget(color: line3List[index].color,
                                      stationName: line3List[index].stationName.tr,
                                      context: context , isArabic: appController.isArabic),
                                ) ;
                              }
                              if(line3List[index].stationNumber==78){
                                return  lastStationWidgetForLine3(

                                    color: line3List[index].color,
                                    stationName: line3List[index].stationName.tr,
                                    context: context ,
                                    isArabic: appController.isArabic,
                                  list3part2:  line3part2 ,
                                  list3part1: line3part1,
                                  chooseStation:widget.chooseStation ,
                                  currentLocation1: widget.currentLocation1,
                                  currentLocation2: widget.currentLocation2,
                                  firstStationModel: widget.oneStationModel,
                                  secondStationModel:widget.secondStationModel ,
                                  ontap: (){
                                    if(widget.chooseStation==0){
                                      location1 = line3List[index].stationName;
                                      firstStationModel= StationModel(imagePath: line3List[index].imagePath,
                                          stationName: line3List[index].stationName,
                                          stationNumber: line3List[index].stationNumber ,
                                          lineNumber:line3List[index].lineNumber ,color: line1List[index].color);
                                      secondStationModel=secondStationModel;
                                      location2 = widget.currentLocation2;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2, firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    } if(widget.chooseStation==1){
                                      location2=line3List[index].stationName;
                                      secondStationModel=
                                          StationModel(imagePath: line3List[index].imagePath,
                                              stationName: line3List[index].stationName,
                                              stationNumber: line3List[index].stationNumber ,
                                              lineNumber:line3List[index].lineNumber,color: line1List[index].color );
                                      firstStationModel =firstStationModel;
                                      location1 = widget.currentLocation1;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2,
                                          firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    }
                                    // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                  }
                                );
                              }
                              // if(index==line3List.length-1){
                              //   return
                              //     InkWell(
                              //     onTap:(){
                              //     if(widget.chooseStation==0){
                              //       location1 = line3List[index].stationName;
                              //       firstStationModel= StationModel(imagePath: line3List[index].imagePath,
                              //           stationName: line3List[index].stationName,
                              //           stationNumber: line3List[index].stationNumber ,
                              //           lineNumber:line3List[index].lineNumber ,color: line1List[index].color);
                              //       secondStationModel=secondStationModel;
                              //       location2 = widget.currentLocation2;
                              //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                              //         return StartTripScreen(location1: location1,
                              //           location2: location2, firstStationModel: firstStationModel,
                              //           secondStationModel: secondStationModel,
                              //           isLine3: currentIndex == 2 ?true : false,) ;
                              //       }));
                              //     } if(widget.chooseStation==1){
                              //       location2=line3List[index].stationName;
                              //       secondStationModel=
                              //           StationModel(imagePath: line3List[index].imagePath,
                              //               stationName: line3List[index].stationName,
                              //               stationNumber: line3List[index].stationNumber ,
                              //               lineNumber:line3List[index].lineNumber,color: line1List[index].color );
                              //       firstStationModel =firstStationModel;
                              //       location1 = widget.currentLocation1;
                              //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                              //         return StartTripScreen(location1: location1,
                              //           location2: location2,
                              //           firstStationModel: firstStationModel,
                              //           secondStationModel: secondStationModel,
                              //           isLine3: currentIndex == 2 ?true : false,) ;
                              //       }));
                              //     }
                              //     // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';
                              //
                              //
                              //   },
                              //     child: lastStationWidgetForLine3(color: line3List[index].color,
                              //         stationName: line3List[index].stationName.tr,
                              //         context: context , isArabic: appController.isArabic,),
                              //   ) ;
                              // }
                              return
                                InkWell(
                                  onTap:(){
                                    if(widget.chooseStation==0){
                                      location1 = line3List[index].stationName;
                                      firstStationModel= StationModel(imagePath: line3List[index].imagePath,
                                          stationName: line3List[index].stationName,
                                          stationNumber: line3List[index].stationNumber ,
                                          lineNumber:line3List[index].lineNumber ,color: line1List[index].color);
                                      secondStationModel=secondStationModel;
                                      location2 = widget.currentLocation2;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2, firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    } if(widget.chooseStation==1){
                                      location2=line3List[index].stationName;
                                      secondStationModel=
                                          StationModel(imagePath: line3List[index].imagePath,
                                              stationName: line3List[index].stationName,
                                              stationNumber: line3List[index].stationNumber ,
                                              lineNumber:line3List[index].lineNumber,color: line1List[index].color );
                                      firstStationModel =firstStationModel;
                                      location1 = widget.currentLocation1;
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return StartTripScreen(location1: location1,
                                          location2: location2,
                                          firstStationModel: firstStationModel,
                                          secondStationModel: secondStationModel,
                                          isLine3: currentIndex == 2 ?true : false,) ;
                                      }));
                                    }
                                    // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';


                                  },
                                  child: middleStationWidget(color: line3List[index].color,
                                      stationName: line3List[index].stationName.tr,
                                      context: context,isArabic: appController.isArabic),
                                );
                            })

                            ),
                          ),
                        ],

                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],),
        );
        });
  }
}
