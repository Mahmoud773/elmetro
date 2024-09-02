
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkkk/controller/locale_controller.dart';
import 'package:kkkk/screens/About_metro.dart';
import 'package:kkkk/screens/Help_screen.dart';
import 'package:kkkk/screens/about_developers.dart';
import 'package:kkkk/screens/tickets_screen.dart';

import '../Start_trip_screen.dart';
import '../controller/app_language.dart';
import '../models/line1_model.dart';
import '../screens/metro_lines_screen.dart';
import '../utils_langs/local_storage/local_storage.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  var xx='';
  LocalStorage localStorage = LocalStorage();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var xx='';
    // MyLocaleController controller = Get.find();
    print('build main drawer $xx');
    // print('build is arabic ${controller.isArabic} ');
    //   xx=localStorage.languageSelected as String;
    return   GetBuilder<AppLanguage>(
      init:AppLanguage() ,
      builder: (controller){
        xx=controller.appLocale;
        return Drawer(

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(child: Image.asset('assets/images/logo.png' ,width: 300 , height: 200,)),
                ),
                ListTile(
                  title: Text('Start Trip'.tr , style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.red ,
                    fontWeight: FontWeight.bold,

                  ),),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Image.asset('assets/images/start_icon.png' , width: 25 , height: 25,
                      color: Colors.red,),
                  ),
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Nearby station'.tr , style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black ,
                    fontWeight: FontWeight.bold,

                  ),),
                  leading:
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Image.asset('assets/images/locatio.png' , width: 25 , height: 25,
                      color: Colors.red,),
                  ),            onTap: (){},
                ),
                ListTile(
                  title: Text('Metro Lines'.tr , style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black ,
                    fontWeight: FontWeight.bold,

                  ),),
                  leading: Icon(Icons.alt_route_rounded , size: 30.0, color: Colors.red,),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
                    {
                      return MetroLinesScreen();
                    }));
                  },
                ),
                ListTile(
                  title: Text('Tickets'.tr , style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black ,
                    fontWeight: FontWeight.bold,

                  ),),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Image.asset('assets/images/tickets.png' , width: 25 , height: 25,
                      color: Colors.red,),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return TicketsScreen() ;
                    }));
                  },
                ),
                ListTile(
                  title: Text('About Metro'.tr , style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black ,
                    fontWeight: FontWeight.bold,

                  ),),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Image.asset('assets/images/about_metro.png' , width: 25 , height: 25,
                      color: Colors.red,),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return AboutMetro() ;
                    }));
                  },
                ),
                ListTile(
                  title: Text('About Developers'.tr , style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black ,
                    fontWeight: FontWeight.bold,

                  ),),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Image.asset('assets/images/about_developers.png' , width: 25 , height: 25,
                      color: Colors.red,),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return AboutDevelopers() ;
                    }));
                  },
                ),
                ListTile(
                  trailing:Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(controller.appLocale=='ar'? 'الانجليزية':'Arabic'  ,
                        style: TextStyle(color: Colors.red , fontSize: 14.0 , ),),
                      SizedBox(width: 4,),
                             Icon(Icons.chevron_right, color: Colors.red,)
                    ],
                  )

                  // GetBuilder<AppLanguage>(
                  //   init: AppLanguage(),
                  //   builder: (controller){
                  //     print('before  press controller.appLocale ${controller.appLocale}');
                  //     return Row(children: [
                  //       Text(controller.appLocale=='ar'? 'الانجليزية':'Arabic'  ,
                  //         style: TextStyle(color: Colors.red , fontSize: 14.0 , ),) ,
                  //       SizedBox(width: 5,),
                  //       Icon(Icons.chevron_right, color: Colors.red,)
                  //     ],);
                  //     // DropdownButton(
                  //     //
                  //     //   items: [
                  //     //     DropdownMenuItem(
                  //     //       child: Text('en'),
                  //     //       value: 'en',
                  //     //     ) ,
                  //     //     DropdownMenuItem(
                  //     //       child: Text('ar'),
                  //     //       value: 'ar',
                  //     //     ) ,
                  //     //
                  //     //   ],
                  //     //   value: controller.appLocale,
                  //     //   onChanged: (value) {
                  //     //     controller.changLanguage(value!);
                  //     //     Get.updateLocale(Locale(value));
                  //     //     print('on press controller.appLocale ${controller.appLocale}');
                  //     //     controller.onInit();
                  //     //   //
                  //     //   });
                  //   },
                  // )
                  ,
                  title: Text('Change language'.tr , style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black ,
                    fontWeight: FontWeight.bold,
                    fontSize:controller.appLocale=='en'? 16: 18,

                  ),),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Image.asset('assets/images/about_settings.png' , width: 25 , height: 25,
                      color: Colors.red,),
                  ),

                  onTap: (){
                    controller.changLanguage(xx=='ar' ? 'en' : 'ar');
                    Get.updateLocale(Locale(xx=='ar' ? 'en' : 'ar'));
                    print('on press controller.appLocale ${controller.appLocale}');
                    controller.onInit();
                    print( 'after press is arabic ${controller.appLocale} ');

                    // controller.iaArabic=!controller.iaArabic;
                    // print('language appLocale  ${controller.appLocale} ');
                    // print('language isArabic  ${controller.isArabic} ');
                    // controller.changeLang(xx );


                    // Get.updateLocale(Locale(xx ));
                    // print('language after change isArabic  ${controller.isArabic} ');
                    // print('language  after change appLocale  ${controller.appLocale} ');


                  },
                ),
                ListTile(
                  title: Text('Help'.tr , style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black ,
                    fontWeight: FontWeight.bold,

                  ),),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Image.asset('assets/images/about_help.png' , width: 25 , height: 25,
                      color: Colors.red,),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return Help() ;
                    }));
                  },
                ),

              ],
            ),
          ),
        );
      }
    );
    //   GetBuilder<AppLanguage>(
    //   init: AppLanguage(),
    //   builder: (controller) {
    //     if(controller.isArabic){
    //       xx='ar';
    //     }if(!controller.isArabic){
    //       xx='en';
    //     }
    //     return Drawer(
    //       child: SingleChildScrollView(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.only(top: 40.0),
    //               child: Center(child: Image.asset('assets/images/logo.png' ,width: 300 , height: 200,)),
    //             ),
    //             ListTile(
    //               title: Text('Start Trip' , style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                 color: Colors.red ,
    //                 fontWeight: FontWeight.bold,
    //
    //               ),),
    //               leading: Padding(
    //                 padding: const EdgeInsets.only(left: 6.0),
    //                 child: Image.asset('assets/images/start_icon.png' , width: 25 , height: 25,
    //                   color: Colors.red,),
    //               ),
    //               onTap: (){
    //                 Navigator.of(context).pop();
    //               },
    //             ),
    //             ListTile(
    //               title: Text('Nearby Station' , style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                 color: Colors.black ,
    //                 fontWeight: FontWeight.bold,
    //
    //               ),),
    //               leading:
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 6.0),
    //                 child: Image.asset('assets/images/locatio.png' , width: 25 , height: 25,
    //                   color: Colors.red,),
    //               ),            onTap: (){},
    //             ),
    //             ListTile(
    //               title: Text('Metro Lines' , style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                 color: Colors.black ,
    //                 fontWeight: FontWeight.bold,
    //
    //               ),),
    //               leading: Icon(Icons.alt_route_rounded , size: 30.0, color: Colors.red,),
    //               onTap: (){
    //                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
    //                 {
    //                   return MetroLinesScreen();
    //                 }));
    //               },
    //             ),
    //             ListTile(
    //               title: Text('Tickets' , style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                 color: Colors.black ,
    //                 fontWeight: FontWeight.bold,
    //
    //               ),),
    //               leading: Padding(
    //                 padding: const EdgeInsets.only(left: 6.0),
    //                 child: Image.asset('assets/images/tickets.png' , width: 25 , height: 25,
    //                   color: Colors.red,),
    //               ),
    //               onTap: (){
    //                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    //                   return TicketsScreen() ;
    //                 }));
    //               },
    //             ),
    //             ListTile(
    //               title: Text('About Metro' , style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                 color: Colors.black ,
    //                 fontWeight: FontWeight.bold,
    //
    //               ),),
    //               leading: Padding(
    //                 padding: const EdgeInsets.only(left: 6.0),
    //                 child: Image.asset('assets/images/about_metro.png' , width: 25 , height: 25,
    //                   color: Colors.red,),
    //               ),
    //               onTap: (){},
    //             ),
    //             ListTile(
    //               title: Text('About Developers' , style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                 color: Colors.black ,
    //                 fontWeight: FontWeight.bold,
    //
    //               ),),
    //               leading: Padding(
    //                 padding: const EdgeInsets.only(left: 6.0),
    //                 child: Image.asset('assets/images/about_developers.png' , width: 25 , height: 25,
    //                   color: Colors.red,),
    //               ),
    //               onTap: (){},
    //             ),
    //             ListTile(
    //               trailing: Text( controller.appLocale ),
    //               title: Text('Change Language' , style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                 color: Colors.black ,
    //                 fontWeight: FontWeight.bold,
    //
    //               ),),
    //               leading: Padding(
    //                 padding: const EdgeInsets.only(left: 6.0),
    //                 child: Image.asset('assets/images/about_settings.png' , width: 25 , height: 25,
    //                   color: Colors.red,),
    //               ),
    //
    //                 onTap: (){
    //     print('language appLocale  ${controller.appLocale} ');
    //     print('language isArabic  ${controller.isArabic} ');
    //
    //
    //     controller.changLanguage(xx);
    //                Get.updateLocale(Locale(xx ));
    //     print('language after change isArabic  ${controller.isArabic} ');
    //     print('language  after change appLocale  ${controller.appLocale} ');
    //
    //
    //                 },
    //             ),
    //             ListTile(
    //               title: Text('Help' , style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                 color: Colors.black ,
    //                 fontWeight: FontWeight.bold,
    //
    //               ),),
    //               leading: Padding(
    //                 padding: const EdgeInsets.only(left: 6.0),
    //                 child: Image.asset('assets/images/about_help.png' , width: 25 , height: 25,
    //                   color: Colors.red,),
    //               ),
    //               onTap: (){},
    //             ),
    //
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    //
    // );
  }
  String getLanguageValue(String lang){
    if (lang == 'ar'){
      return 'ar';
    }else return 'en' ;
  }

}
