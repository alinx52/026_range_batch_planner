import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

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

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
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
    Locale('ar'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Range Batch Planner'**
  String get appTitle;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'Divide an inclusive integer range into balanced contiguous batches entirely offline.'**
  String get appDescription;

  /// No description provided for @languageMenuTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get languageMenuTooltip;

  /// No description provided for @startNumber.
  ///
  /// In en, this message translates to:
  /// **'Start number'**
  String get startNumber;

  /// No description provided for @endNumber.
  ///
  /// In en, this message translates to:
  /// **'End number'**
  String get endNumber;

  /// No description provided for @batchCount.
  ///
  /// In en, this message translates to:
  /// **'Number of batches'**
  String get batchCount;

  /// No description provided for @planBatches.
  ///
  /// In en, this message translates to:
  /// **'Plan batches'**
  String get planBatches;

  /// No description provided for @clearValues.
  ///
  /// In en, this message translates to:
  /// **'Clear values'**
  String get clearValues;

  /// No description provided for @errorRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter all three values'**
  String get errorRequired;

  /// No description provided for @errorWholeNumbers.
  ///
  /// In en, this message translates to:
  /// **'Enter whole numbers only'**
  String get errorWholeNumbers;

  /// No description provided for @errorEndBeforeStart.
  ///
  /// In en, this message translates to:
  /// **'End number must be at least the start number'**
  String get errorEndBeforeStart;

  /// No description provided for @errorRangeTooLarge.
  ///
  /// In en, this message translates to:
  /// **'Range can contain at most 1,000,000 values'**
  String get errorRangeTooLarge;

  /// No description provided for @errorBatchLimit.
  ///
  /// In en, this message translates to:
  /// **'Use 1 to 1,000 batches'**
  String get errorBatchLimit;

  /// No description provided for @errorTooManyBatches.
  ///
  /// In en, this message translates to:
  /// **'Batches cannot exceed values'**
  String get errorTooManyBatches;

  /// No description provided for @resultHeading.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 balanced batch} other{{count} balanced batches}}'**
  String resultHeading(int count);

  /// No description provided for @batchRow.
  ///
  /// In en, this message translates to:
  /// **'Batch {number}: {start}–{end} ({count, plural, =1{1 item} other{{count} items}})'**
  String batchRow(int number, String start, String end, int count);

  /// No description provided for @appearanceMenuTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose appearance'**
  String get appearanceMenuTooltip;

  /// No description provided for @appearanceMaterial.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get appearanceMaterial;

  /// No description provided for @appearanceFlat.
  ///
  /// In en, this message translates to:
  /// **'Flat'**
  String get appearanceFlat;

  /// No description provided for @appearanceSoft.
  ///
  /// In en, this message translates to:
  /// **'Soft'**
  String get appearanceSoft;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @helpTooltip.
  ///
  /// In en, this message translates to:
  /// **'Help & Guide'**
  String get helpTooltip;

  /// No description provided for @helpTitle.
  ///
  /// In en, this message translates to:
  /// **'Range Batch Planner Guide'**
  String get helpTitle;

  /// No description provided for @helpProblemSolvedTitle.
  ///
  /// In en, this message translates to:
  /// **'Problem Solved'**
  String get helpProblemSolvedTitle;

  /// No description provided for @helpProblemSolvedContent.
  ///
  /// In en, this message translates to:
  /// **'Splits contiguous numeric ID ranges into balanced work batches offline, calculating precise start, end, and item count boundaries for each partition.'**
  String get helpProblemSolvedContent;

  /// No description provided for @helpHowToUseTitle.
  ///
  /// In en, this message translates to:
  /// **'How to Use'**
  String get helpHowToUseTitle;

  /// No description provided for @helpHowToUseContent.
  ///
  /// In en, this message translates to:
  /// **'Input the Start Number, End Number, and desired number of batches (or batch size limit), then tap Generate batches.'**
  String get helpHowToUseContent;

  /// No description provided for @helpReadingResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reading Results'**
  String get helpReadingResultsTitle;

  /// No description provided for @helpReadingResultsContent.
  ///
  /// In en, this message translates to:
  /// **'Displays total items in the range, number of batches created, and a sequential list showing Start, End, and Count for each batch.'**
  String get helpReadingResultsContent;

  /// No description provided for @helpExampleTitle.
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get helpExampleTitle;

  /// No description provided for @helpExampleContent.
  ///
  /// In en, this message translates to:
  /// **'Range: 1 to 100 into 3 batches\nBatch 1: 1 - 34 (34 items)\nBatch 2: 35 - 67 (33 items)\nBatch 3: 68 - 100 (33 items).'**
  String get helpExampleContent;

  /// No description provided for @helpLimitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Validation & Limitations'**
  String get helpLimitsTitle;

  /// No description provided for @helpLimitsContent.
  ///
  /// In en, this message translates to:
  /// **'Integer math partitioning tool only. Does not execute asynchronous batch jobs, monitor database workers, or guarantee transaction success.'**
  String get helpLimitsContent;

  /// No description provided for @helpDataAndPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Local Data & Ads'**
  String get helpDataAndPrivacyTitle;

  /// No description provided for @helpDataAndPrivacyContent.
  ///
  /// In en, this message translates to:
  /// **'All range calculations run strictly on-device without internet communication. A standard AdMob banner is displayed below.'**
  String get helpDataAndPrivacyContent;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pt',
    'ru',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return AppLocalizationsZhHans();
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
