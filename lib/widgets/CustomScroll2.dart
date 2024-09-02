import 'package:flutter/material.dart';

class CustomScroll2 extends StatefulWidget {
  const CustomScroll2({Key? key}) : super(key: key);

  @override
  State<CustomScroll2> createState() => _CustomScroll2State();
}

class _CustomScroll2State extends State<CustomScroll2> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              forceElevated: true,
              elevation: 0,
              title: Text('kkkkkkkkkkkk' ,style: TextStyle(color: Colors.black),),
              expandedHeight: 400,
               pinned: true,
               // bottom: TabBar(tabs: [
               //   Container(height: 200, color: Colors.blue,)
               // ]),
               // bottom: PreferredSize(child: Container(color: Colors.pink,
               // height: 300,
               // child: Text('ggggggggggg'),),
               //     preferredSize: Size.fromHeight(0)),

               // bottom: PreferredSize(child: Container(
               //   height: 200,
               //   width: 300,
               //   color: Colors.pink, child:
               //   Column(children: [
               //     Icon(Icons.ac_unit,size: 20,)
               //     ,Icon(Icons.ac_unit,size: 20,)
               //     ,Icon(Icons.ac_unit,size: 20,)
               //   ],),),
               //     preferredSize: Size.fromHeight(400) ,
               //
               // ),

              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.none,
                 background: Container(
                   color: Colors.white,
                   height: 300,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(height: 90,
                       child: Container(color: Colors.white,),),
                       Text('gggggggg'),
                       Text('hhhhhhhhhhhh'),
                       Text('dddddddddddddddddr'),

                       Text('rrrrrrrrrrrrrrrrrrrrr'),
                       Text('gggggggg'),
                       Text('hhhhhhhhhhhh'),
                       Text('dddddddddddddddddr'),

                       Text('rrrrrrrrrrrrrrrrrrrrr'),
                       Text('gggggggg'),
                       Text('hhhhhhhhhhhh'),
                       Text('dddddddddddddddddr'),

                       Text('rrrrrrrrrrrrrrrrrrrrr'),
                       Text('gggggggg'),
                       Text('hhhhhhhhhhhh'),
                       Text('dddddddddddddddddr'),

                       Text('rrrrrrrrrrrrrrrrrrrrr'),

                     ],
                   ),
                 ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) =>
            Icon(Icons.ac_unit_outlined , size: 100,), ))
          ],
        ),
      );
  }
}
