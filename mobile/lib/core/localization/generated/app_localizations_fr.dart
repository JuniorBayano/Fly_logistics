// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Fly Logistics';

  @override
  String get next => 'Suivant';

  @override
  String get skip => 'Passer';

  @override
  String get start => 'Commencer';

  @override
  String get onboardingTitle1 => 'Suivez vos colis facilement';

  @override
  String get onboardingDescription1 => 'Suivez vos colis en temps réel.';

  @override
  String get onboardingSubDescription1 =>
      'Suivez facilement l’évolution de vos colis depuis l’expédition jusqu’à la livraison,directement depuis votre téléphone.';

  @override
  String get onboardingDescription2 => 'Recevez des notifications instantanées';

  @override
  String get onboardingSubDescription2 =>
      'Soyez informé à chaque étape de l’expédition grâce aux notifications envoyées directement sur votre téléphone.';

  @override
  String get onboardingDescription3 => 'Gérez vos paiements facilement';

  @override
  String get onboardingSubDescription3 =>
      'Consultez le montant de vos expéditions et envoyez vos preuves de paiement directement depuis l’application.';
}
