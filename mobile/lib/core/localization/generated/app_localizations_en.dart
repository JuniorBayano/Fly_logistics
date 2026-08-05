// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Fly Logistics';

  @override
  String get next => 'Next';

  @override
  String get skip => 'Skip';

  @override
  String get start => 'Get Started';

  @override
  String get onboardingTitle1 => 'Track your packages easily';

  @override
  String get onboardingDescription1 =>
      'Keep an eye on your shipments in real time.';
}
