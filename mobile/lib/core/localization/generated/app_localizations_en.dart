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
  String get onboardingDescription1 => 'Track your packages in real time.';

  @override
  String get onboardingSubDescription1 =>
      'Easily track your packages from shipment to delivery,directly from your phone.';

  @override
  String get onboardingDescription2 => 'Receive instant notifications.';

  @override
  String get onboardingSubDescription2 =>
      'Stay informed at every stage of the shipment with notifications sent directly to your phone.';

  @override
  String get onboardingDescription3 => 'Manage your payments easily.';

  @override
  String get onboardingSubDescription3 =>
      'Easily track your packages from shipment to delivery,directly from your phone.Check the cost of your shipments and send your proof of payment directly from the app.';
}
