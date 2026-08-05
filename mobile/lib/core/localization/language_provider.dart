import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../storage/app_storage.dart';



class LanguageNotifier extends StateNotifier<Locale> {


  LanguageNotifier()
      : super(_loadLanguage());



  static Locale _loadLanguage(){

    final savedLanguage =
    AppStorage.getLanguage();



    if(savedLanguage != null){

      return Locale(savedLanguage);

    }


    // première ouverture
    AppStorage.saveLanguage("fr");


    return const Locale("fr");

  }



  void changeLanguage(Locale locale){

    state = locale;


    AppStorage.saveLanguage(
      locale.languageCode,
    );

  }

}



final languageProvider =
StateNotifierProvider<LanguageNotifier, Locale>(
      (ref)=>LanguageNotifier(),
);