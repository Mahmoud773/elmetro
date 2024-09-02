// import 'package:flutter/material.dart';
// import 'package:kkkk/Start_trip_screen.dart';
//
// class WhereToPage extends StatefulWidget {
//   final String currentLocation1;
//   final String currentLocation2;
//
//   final int chooseStation;
//
//  // const WhereToPage({Key? key}) : super(key: key);
//   WhereToPage(this.chooseStation , this.currentLocation1 ,this.currentLocation2);
//
//   @override
//   State<WhereToPage> createState() => _WhereToPageState();
// }
//
// class _WhereToPageState extends State<WhereToPage> {
//   var location1='';
//   var location2='';
//   int currentIndex =0;
//   // var backColor = Colors.red ;
//
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 375;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double sizeWidth = MediaQuery.of(context).size.width;
//     double ffem = fem * 0.97;
//     // void setColor(int ind){
//     //    if(ind == 0){
//     //      backColor = Colors.red ;
//     //    }
//     //    if(ind == 1){
//     //      backColor = Colors.amber ;
//     //    }
//     //    if(ind == 0){
//     //      backColor = Colors.green ;
//     //    }
//     // }
//
//
//
//     return  DefaultTabController(length: 2, child:
//     Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('where to' , style: TextStyle(
//           color: Colors.black
//         ),),
//       ),
//       body: Column(children: [
//         Container(
//           width:100 ,
//           child: TextField(decoration: InputDecoration(
//               label: Text('Search location' , textAlign: TextAlign.center,),
//               prefixIcon: Icon(Icons.search),
//            border: OutlineInputBorder(
//              borderSide: BorderSide(width: 2 , color: Colors.grey)
//            )
//           )),
//         ),
//         SizedBox(
//           height: 50,
//           child: AppBar(
//             bottom: TabBar(
//
//               onTap: (index){
//               setState(() {
//                 currentIndex = index;
//               });
//               // setColor(index ) ;
//               },
//
//
//                tabs: [
//                 Tab(
//                   child: Container(child: Text('Line 1' , style: TextStyle(
//                     color: Colors.black
//                   ),) ,
//                   decoration: BoxDecoration(
//                     color: currentIndex==0? Colors.red : Colors.transparent
//                   ),),
//                 ),
//                 Tab(
//                   child: Container(
//                     child: Text('Line 2' ,style: TextStyle(color:Colors.black),
//                       textAlign: TextAlign.center,),
//                     color: currentIndex==1? Colors.amber : Colors.transparent,
//                   ),
//
//                 ),
//               ],
//             ),
//           ),
//         ),
//         // create widgets for each tab bar here
//         Expanded(
//           child: Container(
//             width: double.infinity ,
//             padding: EdgeInsets.all(10.0),
//             child: TabBarView(
//               children: [
//                 // first tab bar view widget
//                 Column(children: [
//                   Container(
//
//                     child: InkWell(
//                       child: Row(
//                         children: [
//                           Image.asset(
//                             'assets/images/yellow-close-photo.png',
//                             width: 50,
//                             height: 50,
//                           ),
//                           Container(
//                             // helwangwP (2:367)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                             child: Text(
//                               'Helwan',
//                               style: TextStyle (
//                                 fontSize: 15*ffem,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.2125*ffem/fem,
//                                 color: Color(0xff000000),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       onTap:(){
//                         if(widget.chooseStation==0){
//                           location1 = 'Helwan';
//                           location2 = widget.currentLocation2;
//                         }if(widget.chooseStation==1){
//                           location2 = 'Helwan';
//                           location1=widget.currentLocation1;
//                         }
//                         // widget.chooseStation==0?location1 = 'Helwan':location2 = 'Helwan';
//
//                         Navigator.push(context, MaterialPageRoute(builder: (context) {
//                           return StartTripScreen(location1, location2) ;
//                         }));
//                       } ,
//                     ),
//                   ),
//                   InkWell(
//                     onTap:(){
//                       if(widget.chooseStation==0){
//                         location1 = 'Station1';
//                         location2 = widget.currentLocation2;
//                       }if(widget.chooseStation==1){
//                         location2='Station1';
//                         location1 = widget.currentLocation1;
//                       }
//                       // widget.chooseStation==0?location1 = 'Station1':location2 = 'Station1';
//
//                       Navigator.push(context, MaterialPageRoute(builder: (context) {
//                         return StartTripScreen(location1, location2) ;
//                       }));
//                     },
//                     child: Row(children: [
//                       Image.asset('assets/images/yellow-open-photo.png',
//                         height: 50,width: 50,),
//                       Align(alignment: AlignmentDirectional.center,
//                           child: const Text('Station1'))
//                     ],),
//                   ),
//                   InkWell(
//                     onTap:(){
//                       location2 = 'Station 2' ;
//                       Navigator.push(context, MaterialPageRoute(builder: (context) {
//                         return StartTripScreen(location1, location2) ;
//                       }));
//                     },
//                     child: Row(children: [
//                       Image.asset('assets/images/yellow-open-photo.png',
//                         height: 50,width: 50,),
//                       Align(alignment: AlignmentDirectional.center,
//                           child: const Text('Station1'))
//                     ],),
//                   ),
//                 ],
//
//                 ),
//
//                 // second tab bar viiew widget
//                 Container(
//                   color: Colors.pink,
//                   child: Center(
//                     child: Text(
//                       'Car',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//
//       ],),
//     )
//     );
//   }
// }
