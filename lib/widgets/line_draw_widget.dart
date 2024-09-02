
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkkk/controller/app_language.dart';

import '../Start_trip_screen.dart';
import '../constants/line1_stations.dart';
import '../models/line1_model.dart';

Widget firstStationWidget({required Color color , required String stationName , required BuildContext context
, bool isArabic =false}){
  return  Padding(
    padding: const EdgeInsets.only(left: 5.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children:[
              Column(
                children: [
                  Icon(Icons.circle , color: color,size: 23,),
                  Container(height: 36,
                    width: 3,color: color,)
                ],),
              Container(width: 3,height: 20,color: color,)
            ] ,
          ),
        ),
        SizedBox(width: 20,),
        Padding(
          padding:  EdgeInsets.only(top :isArabic?0.0 : 3.0 ),
          child: Text('$stationName',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,

            ),
          ),
        ),
      ],),
  );
}
 Widget middleStationWidget({required Color color , required String stationName , required BuildContext context
 , bool isArabic=false , double secondSizedBoxWidth=20,double fontSize=15 } ){
   return   Padding(
     padding: const EdgeInsets.only(left: 5.0),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           child: Stack(
             alignment: AlignmentDirectional.center,
             children:[
               Column(
                 children: [
                   Stack(alignment: AlignmentDirectional.topCenter,
                     children: [
                       Icon(Icons.circle_outlined , color: color,size: 23,),
                       Container(width: 3,height: 3,color: color,)
                     ],
                   ),
                   Container(height: 36,
                     width: 3,color: color,)
                 ],),
               Container(width: 3,height: 20,color: color,)
             ] ,
           ),
         ),
         SizedBox(width: secondSizedBoxWidth,),
         Padding(
           padding:  EdgeInsets.only(top :isArabic ?0.0 : 3.0),
           child: Text('$stationName',
             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
               fontWeight: FontWeight.bold,
               fontSize: fontSize,

             ),
           ),
         ),
       ],),
   );

 }
 Widget lastStationWidget({required Color color , required String stationName , required BuildContext context
 , bool isArabic=false , double fontSize=15 , double secondSizedBoxWidth=15}){
   return Padding(
     padding: const EdgeInsets.only(left: 5.0),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           child: Stack(
             alignment: AlignmentDirectional.center,
             children:[
               Column(
                 children: [
                   Stack(alignment: AlignmentDirectional.topCenter,
                     children: [
                       Icon(Icons.circle , color: color,size: 22,),
                       Container(width: 3,height:3,color: color,)
                     ],
                   ),

                 ],),
             ] ,
           ),
         ),
         SizedBox(width: secondSizedBoxWidth,),
         Padding(
           padding:  EdgeInsets.only(top :isArabic?0.0 : 3.0 ),
           child: Text('$stationName',
             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
               fontWeight: FontWeight.bold,
               fontSize: fontSize,

             ),
           ),
         ),
       ],),
   );

 }

 Widget beforeChangeStationWidget({required Color color , required String stationName , required BuildContext context
   ,  } ){
   return  Padding(
     padding: const EdgeInsets.only(left: 5.0),
     child: Row(
       mainAxisSize: MainAxisSize.min,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           child: Stack(
             alignment: AlignmentDirectional.center,
             children:[
               Column(
                 children: [
                   Stack(alignment: AlignmentDirectional.topCenter,
                     children: [
                       Icon(Icons.circle, color: color,size: 23,),
                       Container(width: 3,height: 5,color: color,)
                     ],
                   ),
                   Container(height: 15,
                     width: 3,color:color,)
                 ],),
               Container(width: 3,height: 20,color: color,)
             ] ,
           ),
         ),
         SizedBox(width: 15,),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.only(top :3.0),
             child: Text(stationName,
               style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                 fontWeight: FontWeight.bold,
                 fontSize: 15.0,

               ),
             ),
           ),
         ),
         // Spacer(),
         SizedBox(width:40),
       ],),
   );
 }

 Widget firstStationAfterChange({required Color color , required String stationName , required BuildContext context
   , bool isArabic=false } ){
   return  Padding(
     padding: const EdgeInsets.only(left: 25.0, right: 20),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           child: Stack(
             alignment: AlignmentDirectional.center,
             children:[
               Column(
                 children: [
                   Container(height: 15,
                     width: 3,color: color,),
                   Stack(alignment: AlignmentDirectional.topCenter,
                     children: [
                       Container(width: 3,height: 3,color: color,),
                       Column(
                         children: [
                           Stack(
                             alignment:AlignmentDirectional.bottomCenter ,
                               children: [
                             Icon(Icons.circle_outlined , color: color,size: 23,),
                             Container(width: 3,height: 3,color: color,)

                           ]),
                           Container(width: 3,height: 35,color: color,)
                         ],
                       ),
                       Container(width: 3,height: 3,color: color,),
                       // Container(width: 3,height: 5,color: color,)
                     ],
                   ),

                 ],),

               //Container(width: 3,height: 20,color: color,)
             ] ,
           ),
         ),
         SizedBox(width: 20,),
         Padding(
           padding: const EdgeInsets.only(top :13.0),
           child: Text('$stationName',
             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
               fontWeight: FontWeight.bold,
               fontSize: 15.0,

             ),
           ),
         ),
       ],),
   );
 }

 Widget mylastStationWidget({required Color color , required String stationName , required BuildContext context}){
   return Padding(
     padding: const EdgeInsets.only(left: 27.0, right:20 , bottom: 15),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           child: Stack(
             alignment: AlignmentDirectional.bottomCenter,
             children:[
               Container(width: 3,height:35,color: color,),
               Stack(
                 alignment: AlignmentDirectional.bottomCenter,
                 children:[
                   Column(
                     children: [
                       Container(width: 3,height:5,color: color,),
                       Column(children:[
                         SizedBox(height: 5,),
                         Icon(Icons.circle , color: color,size: 22,),

                       ] ),
                     ],
                   ),
                 ] ,
               )
             ] ,
           ),
         ),
         SizedBox(width: 20,),
         Padding(
           padding: const EdgeInsets.only(top :8.0),
           child: Text('$stationName',
             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
               fontWeight: FontWeight.bold,
               fontSize: 15.0,

             ),
           ),
         ),
       ],),
   );

 }

 Widget afterchangeStationWidget({required Color color , required String stationName , required BuildContext context}){
   return Padding(
     padding: const EdgeInsets.only(left: 27.0, right:20 , bottom: 15),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           child: Stack(
             alignment: AlignmentDirectional.bottomCenter,
             children:[
               Container(width: 3,height:25,color: color,),
               Stack(
                 alignment: AlignmentDirectional.bottomCenter,
                 children:[
                   Column(
                     children: [
                       Container(width: 3,height:5,color: color,),
                       Column(children:[
                         Container(width: 3,height:20,color: color,),

                         SizedBox(height: 5,),
                         Icon(Icons.circle_outlined , color: color,size: 22,),
                       ] ),
                     ],
                   ),
                 ] ,
               )
             ] ,
           ),
         ),
         SizedBox(width: 20,),
         Padding(
           padding: const EdgeInsets.only(top :8.0),
           child: Text('$stationName',
             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
               fontWeight: FontWeight.bold,
               fontSize: 15.0,

             ),
           ),
         ),
       ],),
   );

 }

 Widget secondfirstStationWidget({required Color color , required String stationName , required BuildContext context}){
   return   Padding(
     padding: const EdgeInsets.only(left: 5.0),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           child: Stack(
             alignment: AlignmentDirectional.center,
             children:[
               Column(
                 children: [
                   Icon(Icons.circle , color: color,size: 23,),
                   Container(height: 36,
                     width: 3,color: color,)
                 ],),
               Container(width: 3,height: 20,color: color,)
             ] ,
           ),
         ),
         SizedBox(width: 20,),
         Padding(
           padding: const EdgeInsets.only(top :3.0),
           child: Text('$stationName',
             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
               fontWeight: FontWeight.bold,
               fontSize: 15.0,

             ),
           ),
         ),
       ],),
   );
 }

 Widget changableStations({required Color circleColor , required Color color , required String stationName , required BuildContext context ,
   required String toLine , bool isArabic=false , required Color arrowColor , double fontsize=15.0}){
  return Padding(
    padding: const EdgeInsets.only(left: 5.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children:[
              Column(
                children: [
                  Stack(alignment: AlignmentDirectional.topCenter,
                    children: [
                      Icon(Icons.circle , color: circleColor,size: 23,),
                      Container(width: 3,height: 3,color: color,)
                    ],
                  ),
                  Container(height: 36,
                    width: 3,color:color,)
                ],),
              Container(width: 3,height: 20,color: color,)
            ] ,
          ),
        ),
        SizedBox(width: 20,),
        Padding(
          padding:  EdgeInsets.only(top : isArabic ?0.0 : 3.0),
          child: Text('${stationName}',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: fontsize,

            ),
          ),
        ),
        Spacer(),
        Row(
          children: [
            Image.asset('assets/images/path.png' , width: 20, height: 20,),
            SizedBox(width: 5,),
            Text('$toLine', style: Theme.of(context).textTheme.bodySmall,),
            SizedBox(width: 5,),
            Icon(Icons.chevron_right , color: arrowColor,)
          ],
        )
      ],),
  );
 }

 // Widget afterKitkatStation(){
 //  return ;
 // }

 Widget lastStationWidgetForLine3({required Color color ,
   required String stationName , required BuildContext context
   , required bool isArabic , required List<StationModel> list3part1 ,
   required List<StationModel> list3part2 , required Function() ontap
 , required int chooseStation  ,

 required   String currentLocation1,
 required String currentLocation2   , required StationModel firstStationModel ,
   required StationModel secondStationModel ,} ){

   StationModel firstStationModelhere = StationModel(imagePath: '',
       stationName: '', stationNumber: 1 ,lineNumber: 1, color: Colors.black);
   StationModel secondStationModelhere = StationModel(imagePath: '',
       stationName: '', stationNumber: 1 ,lineNumber: 1, color: Colors.black);
   var location1='';
   var location2='';
   int currentIndex =2;
   return GetBuilder<AppLanguage>(
     init:AppLanguage() ,
     builder: (appController){
       print("appController is arabic ${appController.isArabic}");
       return  Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Column(
             children: [
               Container(
                 child: GestureDetector(
                   child: Stack(

                     children: [
                       Row(

                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 5.0),
                             child: Container(
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 crossAxisAlignment: CrossAxisAlignment.start,

                                 children: [
                                   Column(
                                     children: [
                                       Container(
                                         child: Stack(
                                           alignment: AlignmentDirectional.center,
                                           children:[
                                             Column(
                                               children: [
                                                 Stack(alignment: AlignmentDirectional.topCenter,
                                                   children: [
                                                     Icon(Icons.circle , color: color,size: 23,),
                                                     Container(width: 3,height: 3,color: color,)
                                                   ],
                                                 ),
                                                 Container(height: 36,
                                                   width: 3,color: color,)
                                               ],),
                                             Container(width: 3,height: 20,color: color,)
                                           ] ,
                                         ),

                                       ),

                                     ],
                                   ),
                                   SizedBox(width: 20,),
                                   Padding(
                                     padding:  EdgeInsets.only(top :appController.isArabic ?0.0 : 3.0 ,

                                     bottom: 6),
                                     child: Text('$stationName',
                                       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                         fontWeight: FontWeight.bold,
                                         fontSize:appController.appLocale=="ar"? 12:  14.0,
                                       ),
                                     ),
                                   ),

                                 ],
                               ),
                             ),
                           ),
                           // Column(
                           //   children: [
                           //     Padding(
                           //       padding: const EdgeInsets.only(left: 0.0),
                           //       child: Column(
                           //         children: [
                           //           Stack(
                           //             alignment: Alignment.topCenter,
                           //             children: [
                           //               // Row(
                           //               //   mainAxisAlignment: MainAxisAlignment.start,
                           //               //   crossAxisAlignment: CrossAxisAlignment.start,
                           //               //   children: [
                           //               //     // Container(
                           //               //     //   child: Stack(
                           //               //     //     alignment: AlignmentDirectional.center,
                           //               //     //     children:[
                           //               //     //       Column(
                           //               //     //         children: [
                           //               //     //           Stack(alignment: AlignmentDirectional.center,
                           //               //     //             children: [
                           //               //     //               Icon(Icons.circle , color: color,size: 23,),
                           //               //     //               Container(width: 3,height: 3,color: color,)
                           //               //     //             ],
                           //               //     //           ),
                           //               //     //           Container(height: 36,
                           //               //     //             width: 3,color: color,)
                           //               //     //         ],),
                           //               //     //       Container(width: 3,height: 20,color: color,)
                           //               //     //     ] ,
                           //               //     //   ),
                           //               //     // ),
                           //               //     // SizedBox(width: 20,),
                           //               //
                           //               //   ],
                           //               // ),
                           //               Stack(
                           //                 children: [
                           //
                           //                   Column(
                           //                     mainAxisAlignment: MainAxisAlignment.center,
                           //                     children: [
                           //                       // Stack(
                           //                       //   children: [
                           //                       //     newMiddleForNewPart(),
                           //                       //     Stack(alignment: AlignmentDirectional.center,
                           //                       //       children: [
                           //                       //         Icon(Icons.circle , color: color,size: 23,),
                           //                       //         Container(width: 3,height: 20,color: color,)
                           //                       //       ],
                           //                       //     ),
                           //                       //   ],
                           //                       // ),
                           //                       Container(height: 50,width: 4,color: Colors.green,),
                           //                       middleStationWidget(context: context,color:
                           //                       Colors.green,isArabic: isArabic,stationName:list[1].stationName),
                           //                       // Container(color: Colors.green,
                           //                       //     height: 50,width:4),
                           //                       middleStationWidget(context: context,color:
                           //                       Colors.green,isArabic: isArabic,stationName:list[2].stationName),
                           //                       middleStationWidget(context: context,color:
                           //                       Colors.green,isArabic: isArabic,stationName:list[3].stationName),
                           //                       middleStationWidget(context: context,color:
                           //                       Colors.green,isArabic: isArabic,stationName:list[4].stationName),
                           //                     ],
                           //                   ),
                           //                 ],
                           //               ),
                           //             ],
                           //           ),
                           //
                           //         ],
                           //       ),
                           //
                           //     ),
                           //
                           //
                           //   ],
                           // ),
                         ],
                       ),
                       appController.appLocale=="ar"?
                       Row(
                         children: [
                           Stack(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(right: Orientation.portrait==true?13:10 ,top: 18),
                                 width:Orientation.portrait==true? MediaQuery.of(context).size.width*44 /100

                                     :MediaQuery.of(context).size.width*47.5/100,
                                 color: Colors.green,height: 3,),
                               Row(
                                 children: [
                                   appController.appLocale=='ar'
                                       ?
                                   Column(
                                     children: [
                                       Column(
                                         children: [
                                           SizedBox(height: 20,),
                                           Stack(
                                             children: [
                                               Stack(
                                                 children: [

                                                   //Container(width: 3,height: 5,color: Colors.green,),
                                                   // Container(width: 3,height: 20,color: Colors.green,),
                                                   Container(width: 3,height: 40,color: Colors.green,),
                                                 ],
                                                 alignment: Alignment.topCenter,
                                               ),

                                             ],
                                           ),

                                         ],
                                       ),
                                     ],
                                   )
                                   // Stack(
                                   //   alignment: Alignment.topLeft,
                                   //   children: [
                                   //     Stack(
                                   //       alignment: Alignment.topCenter,
                                   //       children: [
                                   //         Column(
                                   //           children: [
                                   //             //SizedBox(height: 1,),
                                   //             Container(width: 3,height: 55,color: Colors.green,),
                                   //
                                   //           ],
                                   //         ),
                                   //         Icon(Icons.circle , color: color,size: 25,),
                                   //       ],
                                   //     ),
                                   //     Row(
                                   //       children: [
                                   //         Container(margin: EdgeInsets.only(top: 10),
                                   //           width: 70,color: Colors.green,  height: 3,),
                                   //         SizedBox(width: 5,)
                                   //       ],
                                   //     ),
                                   //   ],
                                   // )
                                       :
                                   Column(
                                     children: [
                                       Column(
                                         children: [
                                           SizedBox(height: 20,),
                                           Stack(
                                             children: [
                                               Stack(
                                                 children: [

                                                   //Container(width: 3,height: 5,color: Colors.green,),
                                                   // Container(width: 3,height: 20,color: Colors.green,),
                                                   Container(width: 3,height: 40,color: Colors.green,),
                                                 ],
                                                 alignment: Alignment.topCenter,
                                               ),

                                             ],
                                           ),

                                         ],
                                       ),
                                     ],
                                   )
                                   ,
                                 ],
                               ),
                             ],
                             alignment: Alignment.topLeft,
                           ),
                           Spacer(),
                           Container(width: 44,),


                         ],
                       )
                           :

                       Row(
                         children: [
                           Stack(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 15 ,top: 18),
                                 width:Orientation.portrait==true? MediaQuery.of(context).size.width*45/100

                                 :MediaQuery.of(context).size.width*47.5/100,
                                 color: Colors.green,height: 3,),
                               Row(
                                 children: [
                                   appController.appLocale=='ar'
                                       ?
                                   Column(
                                     children: [
                                       Column(
                                         children: [
                                           SizedBox(height: 20,),
                                           Stack(
                                             children: [
                                               Stack(
                                                 children: [

                                                   //Container(width: 3,height: 5,color: Colors.green,),
                                                   // Container(width: 3,height: 20,color: Colors.green,),
                                                   Container(width: 3,height: 40,color: Colors.green,),
                                                 ],
                                                 alignment: Alignment.topCenter,
                                               ),

                                             ],
                                           ),

                                         ],
                                       ),
                                     ],
                                   )
                                   // Stack(
                                   //   alignment: Alignment.topLeft,
                                   //   children: [
                                   //     Stack(
                                   //       alignment: Alignment.topCenter,
                                   //       children: [
                                   //         Column(
                                   //           children: [
                                   //             //SizedBox(height: 1,),
                                   //             Container(width: 3,height: 55,color: Colors.green,),
                                   //
                                   //           ],
                                   //         ),
                                   //         Icon(Icons.circle , color: color,size: 25,),
                                   //       ],
                                   //     ),
                                   //     Row(
                                   //       children: [
                                   //         Container(margin: EdgeInsets.only(top: 10),
                                   //           width: 70,color: Colors.green,  height: 3,),
                                   //         SizedBox(width: 5,)
                                   //       ],
                                   //     ),
                                   //   ],
                                   // )
                                       :
                                   Column(
                                     children: [
                                       Column(
                                         children: [
                                           SizedBox(height: 20,),
                                           Stack(
                                             children: [
                                               Stack(
                                                 children: [

                                                   //Container(width: 3,height: 5,color: Colors.green,),
                                                   // Container(width: 3,height: 20,color: Colors.green,),
                                                   Container(width: 3,height: 40,color: Colors.green,),
                                                 ],
                                                 alignment: Alignment.topCenter,
                                               ),

                                             ],
                                           ),

                                         ],
                                       ),
                                     ],
                                   )
                                   ,
                                 ],
                               ),
                             ],
                             alignment: Alignment.topRight,
                           ),
                           Spacer(),
                           Container(width: 44,),


                         ],
                       ),
                     ],
                     alignment:Alignment.centerLeft ,
                   ),
                   behavior: HitTestBehavior.opaque,
                   onTap: ontap
                   //     (){
                   //   if(chooseStation==0){
                   //     location1 = STATIONLLIST[77].stationName;
                   //     firstStationModelhere=StationModel
                   //       (imagePath: STATIONLLIST[77].imagePath,
                   //         stationName: STATIONLLIST[77].stationName,
                   //         stationNumber: STATIONLLIST[77].stationNumber ,
                   //         secondStationNumber:STATIONLLIST[77].secondStationNumber ,
                   //         lineNumber: STATIONLLIST[77].lineNumber,color: STATIONLLIST[77].color);
                   //     secondStationModel=secondStationModel;
                   //     location2 = currentLocation2;
                   //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                   //       return StartTripScreen(location1: location1,
                   //         location2: location2, firstStationModel: firstStationModelhere,
                   //         secondStationModel: secondStationModel ,
                   //         isLine3: currentIndex == 2 ?true : false,) ;
                   //     }));
                   //   }
                   //   if(chooseStation==1){
                   //     location2=STATIONLLIST[77].stationName;
                   //     secondStationModelhere= StationModel(imagePath: "",
                   //         stationName: STATIONLLIST[77].stationName,
                   //         stationNumber: STATIONLLIST[77].stationNumber ,
                   //         secondStationNumber:STATIONLLIST[77].secondStationNumber ,
                   //         lineNumber: STATIONLLIST[77].lineNumber,color: STATIONLLIST[77].color);
                   //     firstStationModel =firstStationModel;
                   //     location1 = currentLocation1;
                   //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                   //       return StartTripScreen(location1: location1,
                   //         location2: location2,
                   //         firstStationModel: firstStationModel,
                   //         secondStationModel: secondStationModelhere ,
                   //         isLine3: currentIndex == 2 ?true : false,) ;
                   //     }));
                   //   }
                   // }
                   ,
                 ),
               ),
               // Row(
               //   children: [
               //     Container(width:50 , color: Colors.green,height: 5,),
               //     Container(width:50 , color: Colors.green,height: 5,),
               //   ],
               // ),
             ],
           ),
           Column(
               children: List.generate(list3part1.length, (index) {
                 if(index==list3part1.length-1){
                   return Container(
                     child: Row(children: [
                       Container(
                         width:MediaQuery.of(context).size.width*47/100,
                         child: GestureDetector(
                           child: lastStationWidget(
                               color: Colors.green,
                               context: context,
                               stationName: "${list3part1[index].stationName.tr}",
                               secondSizedBoxWidth: 0,
                               isArabic: appController.isArabic,
                               fontSize: 15
                           ),
                           behavior: HitTestBehavior.opaque,
                           onTap: (){
                             if(chooseStation==0){
                               location1 = list3part1[index].stationName;
                               firstStationModelhere=StationModel
                                 (imagePath: list3part1[index].imagePath,
                                   stationName: list3part1[index].stationName,
                                   stationNumber: list3part1[index].stationNumber ,
                                   secondStationNumber:list3part1[index].secondStationNumber ,
                                   lineNumber: list3part1[index].lineNumber,color: list3part1[index].color);
                               secondStationModel=secondStationModel;
                               location2 = currentLocation2;
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return StartTripScreen(location1: location1,
                                   location2: location2, firstStationModel: firstStationModelhere,
                                   secondStationModel: secondStationModel ,
                                   isLine3: currentIndex == 2 ?true : false,) ;
                               }));
                             }
                             if(chooseStation==1){
                               location2=list3part1[index].stationName;
                               secondStationModelhere= StationModel(imagePath: "",
                                   stationName: list3part1[index].stationName,
                                   stationNumber: list3part1[index].stationNumber ,
                                   secondStationNumber:list3part1[index].secondStationNumber ,
                                   lineNumber: list3part1[index].lineNumber,color: list3part1[index].color);
                               firstStationModel =firstStationModel;
                               location1 = currentLocation1;
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return StartTripScreen(location1: location1,
                                   location2: location2,
                                   firstStationModel: firstStationModel,
                                   secondStationModel: secondStationModelhere ,
                                   isLine3: currentIndex == 2 ?true : false,) ;
                               }));
                             }
                           },
                         ),
                       ),
                       // SizedBox(width:appController.appLocale=='ar'?75 :35 ),
                       Container(
                       //width:MediaQuery.of(context).size.width*45/100,
                         child: GestureDetector(
                           child: lastStationWidget(
                               color: Colors.green,
                               context: context,
                               stationName: "${list3part2[index].stationName.tr}",
                               secondSizedBoxWidth: 0,
                               isArabic: isArabic,
                               fontSize: 15
                           ),
                           behavior: HitTestBehavior.opaque,
                           onTap: (){
                             if(chooseStation==0){
                               location1 = list3part2[index].stationName;
                               firstStationModel=StationModel
                                 (imagePath: list3part2[index].imagePath,
                                   stationName: list3part2[index].stationName,
                                   stationNumber: list3part2[index].stationNumber ,
                                   secondStationNumber:list3part1[index].secondStationNumber ,
                                   lineNumber: list3part2[index].lineNumber,color: list3part2[index].color);
                               secondStationModel=secondStationModel;
                               location2 = currentLocation2;
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return StartTripScreen(location1: location1,
                                   location2: location2, firstStationModel: firstStationModel,
                                   secondStationModel: secondStationModel ,
                                   isLine3: currentIndex == 2 ?true : false,) ;
                               }));
                             }
                             if(chooseStation==1){
                               location2=list3part2[index].stationName;
                               secondStationModel= StationModel(imagePath: "",
                                   stationName: list3part2[index].stationName,
                                   stationNumber: list3part2[index].stationNumber ,
                                   secondStationNumber:list3part1[index].secondStationNumber ,
                                   lineNumber: list3part2[index].lineNumber,color: list3part2[index].color);
                               firstStationModel =firstStationModel;
                               location1 = currentLocation1;
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return StartTripScreen(location1: location1,
                                   location2: location2,
                                   firstStationModel: firstStationModel,
                                   secondStationModel: secondStationModel ,
                                   isLine3: currentIndex == 2 ?true : false,) ;
                               }));
                             }
                           },
                         ),
                       ),
                     ],
                     ),
                   ) ;
                 }

                 return
                   Container(
                     child: Row(children: [
                       Container(
                         width:MediaQuery.of(context).size.width*47/100,
                         // width:170,
                         child: GestureDetector(
                           child: middleStationWidget(
                               color: Colors.green,
                               context: context,
                               stationName: "${list3part1[index].stationName.tr}",
                               secondSizedBoxWidth: 0,
                               isArabic: appController.isArabic,
                               fontSize:index==2?12: 14
                           ),
                           behavior: HitTestBehavior.opaque,
                           onTap: (){
                             if(chooseStation==0){
                               location1 = list3part1[index].stationName;
                               firstStationModelhere=StationModel
                                 (imagePath: list3part1[index].imagePath,
                                   stationName: list3part1[index].stationName,
                                   stationNumber: list3part1[index].stationNumber ,
                                   secondStationNumber:list3part1[index].secondStationNumber ,
                                   lineNumber: list3part1[index].lineNumber,color: list3part1[index].color);
                               secondStationModel=secondStationModel;
                               location2 = currentLocation2;
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return StartTripScreen(location1: location1,
                                   location2: location2, firstStationModel: firstStationModelhere,
                                   secondStationModel: secondStationModel ,
                                   isLine3: currentIndex == 2 ?true : false,) ;
                               }));
                             }
                             if(chooseStation==1){
                               location2=list3part1[index].stationName;
                               secondStationModelhere= StationModel(imagePath: "",
                                   stationName: list3part1[index].stationName,
                                   stationNumber: list3part1[index].stationNumber ,
                                   secondStationNumber:list3part1[index].secondStationNumber ,
                                   lineNumber: list3part1[index].lineNumber,color: list3part1[index].color);
                               firstStationModel =firstStationModel;
                               location1 = currentLocation1;
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return StartTripScreen(location1: location1,
                                   location2: location2,
                                   firstStationModel: firstStationModel,
                                   secondStationModel: secondStationModelhere ,
                                   isLine3: currentIndex == 2 ?true : false,) ;
                               }));
                             }
                           },
                         ),
                       ),
                       // SizedBox(width:35 ),
                       GestureDetector(
                         child: Container(
                          // width:MediaQuery.of(context).size.width*45/100,
                           child: middleStationWidget(
                               color: Colors.green,
                               context: context,
                               stationName: "${list3part2[index].stationName.tr}",
                               secondSizedBoxWidth: 0,
                               isArabic: appController.isArabic,
                               fontSize:index==3?13: 15
                           ),
                         ),
                         behavior: HitTestBehavior.opaque,
                         onTap: (){
                           if(chooseStation==0){
                             location1 = list3part2[index].stationName;
                             firstStationModelhere=StationModel
                               (imagePath: list3part2[index].imagePath,
                                 stationName: list3part2[index].stationName,
                                 stationNumber: list3part2[index].stationNumber ,
                                 secondStationNumber:list3part2[index].secondStationNumber ,
                                 lineNumber: list3part2[index].lineNumber,color: list3part2[index].color);
                             secondStationModel=secondStationModel;
                             location2 = currentLocation2;
                             Navigator.push(context, MaterialPageRoute(builder: (context) {
                               return StartTripScreen(location1: location1,
                                 location2: location2, firstStationModel: firstStationModelhere,
                                 secondStationModel: secondStationModel ,
                                 isLine3: currentIndex == 2 ?true : false,) ;
                             }));
                           }
                           if(chooseStation==1){
                             location2=list3part2[index].stationName;
                             secondStationModelhere= StationModel(imagePath: "",
                                 stationName: list3part2[index].stationName,
                                 stationNumber: list3part2[index].stationNumber ,
                                 secondStationNumber:list3part2[index].secondStationNumber ,
                                 lineNumber: list3part2[index].lineNumber,color: list3part2[index].color);
                             firstStationModel =firstStationModel;
                             location1 = currentLocation1;
                             Navigator.push(context, MaterialPageRoute(builder: (context) {
                               return StartTripScreen(location1: location1,
                                 location2: location2,
                                 firstStationModel: firstStationModel,
                                 secondStationModel: secondStationModelhere ,
                                 isLine3: currentIndex == 2 ?true : false,) ;
                             }));
                           }
                         },
                       ),
                     ],),
                   );

               })


             // Row(children: [
             //   middleStationWidget(
             //     color: Colors.green,
             //     context: context,
             //     stationName: "111",
             //     secondSizedBoxWidth: 0,
             //     isArabic: isArabic,
             //   ),
             //   SizedBox(width: 62),
             //   middleStationWidget(
             //     color: Colors.green,
             //     context: context,
             //     stationName: "111",
             //     secondSizedBoxWidth: 0,
             //     isArabic: isArabic,
             //   ),
             // ],),

           )

         ],
       ) ;
     },
   );

 }

 // Row(children: [
 // middleStationWidget(
 // color: Colors.green,
 // context: context,
 // stationName: "111",
 // secondSizedBoxWidth: 0,
 // isArabic: isArabic,
 // ),
 // SizedBox(width: 62),
 // middleStationWidget(
 // color: Colors.green,
 // context: context,
 // stationName: "111",
 // secondSizedBoxWidth: 0,
 // isArabic: isArabic,
 // ),
 // ],);

 Widget newMiddleForNewPart(){
  return Padding(
    padding: const EdgeInsets.only(left: 5.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children:[
              Column(
                children: [
                  Stack(alignment: AlignmentDirectional.topCenter,
                    children: [
                      Icon(Icons.circle_outlined , color:  Colors.green,size: 23,),
                      Container(width: 3,height: 3,color:  Colors.green,)
                    ],
                  ),
                  Container(height: 36,
                    width: 3,color:  Colors.green,)
                ],),
              //Container(width: 3,height: 20,color: Colors.green,)
            ] ,
          ),
        ),

      ],),
  );  ;
 }

 class CurveCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint= Paint()..color =Colors.red
    ..style=PaintingStyle.fill
    ..strokeWidth =10;

    canvas.drawLine(Offset(500, 500), Offset(550, 10000), paint);
    canvas.drawCircle(Offset(500, 500), 15, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
 }
 Widget returnPainter(){
  return Container(

    child:
       CustomPaint(painter: CurveCustomPainter(),),

  );
 }


