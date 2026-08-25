import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Fly Logistics'**
  String get appName;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get start;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Track your packages easily'**
  String get onboardingTitle1;

  /// No description provided for @onboardingDescription1.
  ///
  /// In en, this message translates to:
  /// **'Track your packages in real time.'**
  String get onboardingDescription1;

  /// No description provided for @onboardingSubDescription1.
  ///
  /// In en, this message translates to:
  /// **'Easily track your packages from shipment to delivery,directly from your phone.'**
  String get onboardingSubDescription1;

  /// No description provided for @onboardingDescription2.
  ///
  /// In en, this message translates to:
  /// **'Receive instant notifications.'**
  String get onboardingDescription2;

  /// No description provided for @onboardingSubDescription2.
  ///
  /// In en, this message translates to:
  /// **'Stay informed at every stage of the shipment with notifications sent directly to your phone.'**
  String get onboardingSubDescription2;

  /// No description provided for @onboardingDescription3.
  ///
  /// In en, this message translates to:
  /// **'Manage your payments easily.'**
  String get onboardingDescription3;

  /// No description provided for @onboardingSubDescription3.
  ///
  /// In en, this message translates to:
  /// **'Easily track your packages from shipment to delivery,directly from your phone.Check the cost of your shipments and send your proof of payment directly from the app.'**
  String get onboardingSubDescription3;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create your partner account'**
  String get createAccount;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phone_number;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirm_password;

  /// No description provided for @agree_condition.
  ///
  /// In en, this message translates to:
  /// **'I accept the Terms of Use and the Privacy Policy.'**
  String get agree_condition;

  /// No description provided for @inscription.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get inscription;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get account;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get register;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to your logistics space'**
  String get welcome;

  /// No description provided for @mailOrPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Email or Phone Number'**
  String get mailOrPhoneNumber;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get forgotPassword;

  /// No description provided for @remindMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get remindMe;

  /// No description provided for @haveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get haveAccount;

  /// No description provided for @contactAdmin.
  ///
  /// In en, this message translates to:
  /// **'Contact the administrator'**
  String get contactAdmin;

  /// No description provided for @always.
  ///
  /// In en, this message translates to:
  /// **'Almost there'**
  String get always;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @otpSend.
  ///
  /// In en, this message translates to:
  /// **'Please enter the code sent to your email address tsafackjuniordauphin@gmail.com for verification.'**
  String get otpSend;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get success;

  /// No description provided for @nowConnect.
  ///
  /// In en, this message translates to:
  /// **'You are now connected.'**
  String get nowConnect;

  /// No description provided for @continu.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continu;

  /// No description provided for @followPackage.
  ///
  /// In en, this message translates to:
  /// **'Track your shipments in real time anywhere in the world.'**
  String get followPackage;

  /// No description provided for @summaryActivity.
  ///
  /// In en, this message translates to:
  /// **'Activity Summary'**
  String get summaryActivity;

  /// No description provided for @transit.
  ///
  /// In en, this message translates to:
  /// **'In transit'**
  String get transit;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivery;

  /// No description provided for @activePackage.
  ///
  /// In en, this message translates to:
  /// **'active package(s)'**
  String get activePackage;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'completed'**
  String get finish;

  /// No description provided for @trackingNumber.
  ///
  /// In en, this message translates to:
  /// **'Tracking Number'**
  String get trackingNumber;

  /// No description provided for @recentSms.
  ///
  /// In en, this message translates to:
  /// **'Recent Notifications'**
  String get recentSms;

  /// No description provided for @allViews.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get allViews;

  /// No description provided for @preparePackage.
  ///
  /// In en, this message translates to:
  /// **'Package being prepared'**
  String get preparePackage;

  /// No description provided for @subPreparePackage.
  ///
  /// In en, this message translates to:
  /// **'Your package #FLY-9921 is being prepared at the Paris warehouse'**
  String get subPreparePackage;

  /// No description provided for @arriveCenter.
  ///
  /// In en, this message translates to:
  /// **'Arrived at the center'**
  String get arriveCenter;

  /// No description provided for @subArriveCenter.
  ///
  /// In en, this message translates to:
  /// **'Shipment #FLY-8827 has arrived at the regional sorting center.'**
  String get subArriveCenter;

  /// No description provided for @followCourses.
  ///
  /// In en, this message translates to:
  /// **'Track a package'**
  String get followCourses;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @followUp.
  ///
  /// In en, this message translates to:
  /// **'follow up'**
  String get followUp;

  /// No description provided for @rate.
  ///
  /// In en, this message translates to:
  /// **'rates'**
  String get rate;

  /// No description provided for @profil.
  ///
  /// In en, this message translates to:
  /// **'profile'**
  String get profil;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
