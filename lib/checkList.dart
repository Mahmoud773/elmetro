 import 'package:flutter/material.dart';
import 'package:kkkk/widgets/line_draw_widget.dart';

class CheckList extends StatefulWidget {
   const CheckList({Key? key}) : super(key: key);

   @override
   State<CheckList> createState() => _CheckListState();
 }

 class _CheckListState extends State<CheckList> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(),
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(5.0),
           child: Column(children: List.generate(20, (ind) {
             if(ind ==0){
               return
                 firstStationWidget(color: Colors.yellow , stationName: 'STATION 1', context: context);
             }
             if(ind ==19){
               return
                 lastStationWidget(color: Colors.yellow, stationName: 'Middle Station', context: context);
             }
             return
               middleStationWidget(color: Colors.yellow ,context: context , stationName: 'LAST STATION');

           }
           )

           ,),
         ),
       )
     );
   }
 }
