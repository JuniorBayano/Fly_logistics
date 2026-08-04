import 'package:flutter/material.dart';
import 'package:fly_logistics/core/constant/app_constants.dart';
import '../core/Theme/app_theme.dart';

class FlyLogisticsApp extends StatelessWidget {
  const FlyLogisticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

       home: Scaffold(
         body: Center(
           child:Text("Bonjour le monde")
         )
       )
    );
  }
}