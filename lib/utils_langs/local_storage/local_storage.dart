
import 'package:get_storage/get_storage.dart';

class LocalStorage {
  // write
  void saveLangToDisk(String language) async{
   await GetStorage().write('lang', language);
  }
  // read
Future<String> get languageSelected async {
    return await GetStorage().read('lang');
}
}
