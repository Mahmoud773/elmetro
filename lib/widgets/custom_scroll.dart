
import 'package:flutter/material.dart';
import 'package:kkkk/constants/line1_stations.dart';

  class CustomScroll extends StatefulWidget {
    const CustomScroll({Key? key}) : super(key: key);

    @override
    State<CustomScroll> createState() => _CustomScrollState();
  }

  class _CustomScrollState extends State<CustomScroll> {
    final ScrollController scrollcontroller =  ScrollController();


    @override
  void initState() {
      super.initState();
  }
    @override
    Widget build(BuildContext context) {
      bool scroll_visibility = true;

      scrollcontroller.addListener(() {
        if(scrollcontroller.position.pixels > 0 || scrollcontroller.position.pixels < scrollcontroller.position.maxScrollExtent)
          {scroll_visibility = false;
          setState(() {});}
        else
          {scroll_visibility = true;
          setState(() {});}


      });

      return Scaffold(
        appBar: AppBar(),
          body: Column(
            children: <Widget>[
              Visibility(
                  visible: scroll_visibility,
                  child: Container(color: Colors.yellow,
                  height:200 ,)
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.0),
              ),
              // CategoriesBar(),
              Padding(
                padding: EdgeInsets.only(top: 4.0),
              ),
              /*
            You will need to pass the controller down to the scroll view in your product
            view widget, so it can work...
          */
              ProductView(controller: scrollcontroller),
            ],
          )
      );
    }
  }



class ProductView extends StatefulWidget {
  final ScrollController controller;

  /*
  *  this is where we add the controller so we contstruct with the controller
  *  from the parent.
  */
  ProductView({required this.controller});

  @override
  _ProductViewState createState() => _ProductViewState();
}
/*
*  With that we now have a predefined controller from parent that we can use
*  in the ProductView widget.
*/
class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return new Flexible(
        child: new GridView.builder(
          //then we add the controller here
            controller: widget.controller,
            gridDelegate:
             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: STATIONLLIST.length,
            itemBuilder: (BuildContext context, int index) {
              return Icon(Icons.ac_unit_outlined , size: 50,);
              //...your code here as described above
            }
        )
    );
  }
}