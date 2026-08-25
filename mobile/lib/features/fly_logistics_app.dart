import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:fly_logistics/core/constant/app_constants.dart';
import 'package:fly_logistics/core/localization/language_provider.dart';
import 'package:fly_logistics/core/Theme/app_theme.dart';

import 'package:fly_logistics/features/authentification/screens/login.dart';

import '../l10n/app_localizations.dart';
import 'authentification/screens/otp_screen.dart';
import 'authentification/screens/register.dart';
import 'authentification/screens/succes_register.dart';
import 'main_screen.dart';
import 'menu/dashboard.dart';
import 'onboarding/screens/onboard.dart';
class FlyLogisticsApp extends ConsumerStatefulWidget {
  const FlyLogisticsApp({super.key});

  @override
  ConsumerState<FlyLogisticsApp> createState() => _FlyLogisticsApp();
}

class _FlyLogisticsApp extends ConsumerState<FlyLogisticsApp> {
  @override
  Widget build(BuildContext context) {
    final locale=ref.watch(languageProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme:AppTheme.lightTheme,
      darkTheme:AppTheme.darkTheme,
      themeMode:ThemeMode.system,
      locale: locale,

      supportedLocales: AppLocalizations.supportedLocales,

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: MainScreen(),
    );
  }

}