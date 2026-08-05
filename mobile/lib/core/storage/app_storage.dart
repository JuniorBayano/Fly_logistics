import 'package:get_storage/get_storage.dart';


class AppStorage {

  AppStorage._();


  static final GetStorage _storage = GetStorage();


  static const String languageKey = "language";


  static String? getLanguage(){

    return _storage.read(languageKey);

  }


  static void saveLanguage(String language){

    _storage.write(languageKey, language);

  }

}