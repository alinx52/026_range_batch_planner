// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'रेंज बैच प्लानर';

  @override
  String get appDescription =>
      'समावेशी पूर्णांक रेंज को पूरी तरह ऑफ़लाइन संतुलित और क्रमिक बैच में बाँटें।';

  @override
  String get languageMenuTooltip => 'भाषा चुनें';

  @override
  String get startNumber => 'आरंभ संख्या';

  @override
  String get endNumber => 'अंतिम संख्या';

  @override
  String get batchCount => 'बैच की संख्या';

  @override
  String get planBatches => 'बैच बनाएँ';

  @override
  String get clearValues => 'मान मिटाएँ';

  @override
  String get errorRequired => 'तीनों मान दर्ज करें';

  @override
  String get errorWholeNumbers => 'केवल पूर्णांक दर्ज करें';

  @override
  String get errorEndBeforeStart =>
      'अंतिम संख्या आरंभ संख्या से कम नहीं हो सकती';

  @override
  String get errorRangeTooLarge => 'रेंज में अधिकतम 1,000,000 मान हो सकते हैं';

  @override
  String get errorBatchLimit => '1 से 1,000 बैच का उपयोग करें';

  @override
  String get errorTooManyBatches =>
      'बैच की संख्या मानों की संख्या से अधिक नहीं हो सकती';

  @override
  String resultHeading(int count) {
    return '$count संतुलित बैच';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    return 'बैच $number: $start–$end ($count आइटम)';
  }

  @override
  String get appearanceMenuTooltip => 'रूप चुनें';

  @override
  String get appearanceMaterial => 'मटेरियल';

  @override
  String get appearanceFlat => 'समतल';

  @override
  String get appearanceSoft => 'कोमल';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';
}
