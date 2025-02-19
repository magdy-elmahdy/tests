import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @our_Insurance_Services.
  ///
  /// In en, this message translates to:
  /// **'Our Insurance Services'**
  String get our_Insurance_Services;

  /// No description provided for @about_us.
  ///
  /// In en, this message translates to:
  /// **'About us'**
  String get about_us;

  /// No description provided for @call_us.
  ///
  /// In en, this message translates to:
  /// **'Call us'**
  String get call_us;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @edit_my_account.
  ///
  /// In en, this message translates to:
  /// **'Edit my account'**
  String get edit_my_account;

  /// No description provided for @app_language.
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get app_language;

  /// No description provided for @terms_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & conditions'**
  String get terms_conditions;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get log_out;

  /// No description provided for @version_3_11_5.
  ///
  /// In en, this message translates to:
  /// **'Version 3.11.5'**
  String get version_3_11_5;

  /// No description provided for @hi.
  ///
  /// In en, this message translates to:
  /// **'Hi'**
  String get hi;

  /// No description provided for @good_Morning.
  ///
  /// In en, this message translates to:
  /// **'Good Morning!'**
  String get good_Morning;

  /// No description provided for @select_insurance_type.
  ///
  /// In en, this message translates to:
  /// **'Select insurance type'**
  String get select_insurance_type;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @protect_your_home.
  ///
  /// In en, this message translates to:
  /// **'Protect your home with easy insurance!'**
  String get protect_your_home;

  /// No description provided for @car.
  ///
  /// In en, this message translates to:
  /// **'Car'**
  String get car;

  /// No description provided for @quick_car.
  ///
  /// In en, this message translates to:
  /// **'Quick car insurance at your fingertips!'**
  String get quick_car;

  /// No description provided for @health.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get health;

  /// No description provided for @easy_health_coverage.
  ///
  /// In en, this message translates to:
  /// **'Easy health coverage!'**
  String get easy_health_coverage;

  /// No description provided for @personal_accident.
  ///
  /// In en, this message translates to:
  /// **'Personal Accident'**
  String get personal_accident;

  /// No description provided for @quick_personal.
  ///
  /// In en, this message translates to:
  /// **'Quick personal accident coverage!'**
  String get quick_personal;

  /// No description provided for @ensure_your.
  ///
  /// In en, this message translates to:
  /// **'Ensure your Home, Health, Car, Accident'**
  String get ensure_your;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started now'**
  String get get_started;

  /// No description provided for @please_Login.
  ///
  /// In en, this message translates to:
  /// **'Please Login to your account'**
  String get please_Login;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phone_number;

  /// No description provided for @enter_your_phone.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number'**
  String get enter_your_phone;

  /// No description provided for @cont.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get cont;

  /// No description provided for @dont_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get dont_have_an_account;

  /// No description provided for @register_now.
  ///
  /// In en, this message translates to:
  /// **'Register Now'**
  String get register_now;

  /// No description provided for @sent_an_SMS.
  ///
  /// In en, this message translates to:
  /// **'We just sent an SMS'**
  String get sent_an_SMS;

  /// No description provided for @enter_the_security_code.
  ///
  /// In en, this message translates to:
  /// **'Enter the security code we sent to'**
  String get enter_the_security_code;

  /// No description provided for @didnt_get_the_code.
  ///
  /// In en, this message translates to:
  /// **'Didn’t get the code?'**
  String get didnt_get_the_code;

  /// No description provided for @create_new_account.
  ///
  /// In en, this message translates to:
  /// **'Create new account'**
  String get create_new_account;

  /// No description provided for @please_Enter_your_details.
  ///
  /// In en, this message translates to:
  /// **'Please Enter your details'**
  String get please_Enter_your_details;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get full_name;

  /// No description provided for @enter_your_name.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enter_your_name;

  /// No description provided for @already_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get already_have_an_account;

  /// No description provided for @login_Now.
  ///
  /// In en, this message translates to:
  /// **'Login Now'**
  String get login_Now;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
