
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils_langs/local_storage/local_storage.dart';

class MyLocaleController extends GetxController{
  LocalStorage localStorage = LocalStorage();
  Locale initialLangLocale =Locale('en');
   bool isArabic = true;
  var appLocale='ar';


  @override
  void onInit() async {
     initialLangLocale = localStorage.languageSelected == null ?Locale('en') :  Locale('ar');
     if(localStorage.languageSelected==null){
       isArabic=false;
       update();
     }
     if(localStorage.languageSelected=='en'){
       isArabic=false;
       update();
     }
     if(localStorage.languageSelected=='ar'){
       isArabic=true;
       update();

     }
     appLocale = await localStorage.languageSelected == null ?'ar' : await localStorage.languageSelected;
     Get.updateLocale(Locale(appLocale));
     update();

     super.onInit();

  }


  void changeLang(String codeLang){
    Locale locale = Locale(codeLang);
    isArabic=!isArabic;
    if(codeLang=='ar'){
      localStorage.saveLangToDisk(codeLang);
      Get.updateLocale(locale);
      update();

    }else{
      localStorage.saveLangToDisk(codeLang);
      Get.updateLocale(locale);
      update();
    }
  }
}