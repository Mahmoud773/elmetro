
import 'dart:ui';

import 'package:get/get.dart';
import 'package:kkkk/utils_langs/local_storage/local_storage.dart';

class AppLanguage extends GetxController{
  var appLocale='en';
  bool isArabic=true;
  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    print('AppLanguage oninit');
    LocalStorage localStorage = LocalStorage();
    appLocale = await localStorage.languageSelected == null ?'en' : await localStorage.languageSelected;
    update();
    Get.updateLocale(Locale(appLocale));
    // if(await localStorage.languageSelected==null){
    //   isArabic=false;
    //   update();
    // }
    // if(await localStorage.languageSelected=='en'){
    //   isArabic=false;
    //   update();
    // }
    // if(await localStorage.languageSelected=='ar'){
    //   isArabic=true;
    //   update();
    //
    // }
    // Get.updateLocale(Locale(appLocale));
    // update();

  }

  void changLanguage(String type) async {
    LocalStorage localStorage = LocalStorage();
    // Locale locale = Locale(type);
   if(appLocale == type){
     return;
   }
    if(type=='ar'){
      appLocale=='ar';
     localStorage.saveLangToDisk('ar');
     // Get.updateLocale(Locale(type));
    }else{
      appLocale=='en';
      localStorage.saveLangToDisk('en');
     // Get.updateLocale(Locale(type));
      // Get.updateLocale(locale);
    }

   update();
  }
}