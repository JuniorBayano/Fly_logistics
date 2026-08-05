import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:fly_logistics/core/constant/app_constants.dart';
import 'package:fly_logistics/core/localization/language_provider.dart';
import 'package:fly_logistics/core/Theme/app_theme.dart';

import 'package:fly_logistics/core/localization/generated/app_localizations.dart';
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
      home:const LanguageTestScreen(),
    );
  }

}

class LanguageTestScreen extends ConsumerWidget {

  const LanguageTestScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final localizations = AppLocalizations.of(context);


    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(
              localizations!.onboardingDescription1,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),


            const SizedBox(height: 20),


            ElevatedButton(
              onPressed: () {

                ref
                    .read(languageProvider.notifier)
                    .changeLanguage(
                  const Locale('en'),
                );

              },

              child: const Text("English"),
            ),



            ElevatedButton(
              onPressed: () {

                ref
                    .read(languageProvider.notifier)
                    .changeLanguage(
                  const Locale('fr'),
                );

              },

              child: const Text("Français"),
            ),


          ],
        ),
      ),
    );
  }
}
