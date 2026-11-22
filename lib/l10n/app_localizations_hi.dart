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

  @override
  String get helpTooltip => 'सहायता और मार्गदर्शिका';

  @override
  String get helpTitle => 'रेंज बैच प्लानर मार्गदर्शिका';

  @override
  String get helpProblemSolvedTitle => 'समस्या का समाधान';

  @override
  String get helpProblemSolvedContent =>
      'प्रत्येक विभाजन के लिए सटीक शुरुआत, अंत और गणना सीमाओं की गणना करते हुए, संख्यात्मक श्रेणियों को संतुलित कार्य बैचों में विभाजित करता है।';

  @override
  String get helpHowToUseTitle => 'उपयोग कैसे करें';

  @override
  String get helpHowToUseContent =>
      'प्रारंभ संख्या, समाप्ति संख्या और बैचों की संख्या दर्ज करें, फिर बैच उत्पन्न करें दबाएं।';

  @override
  String get helpReadingResultsTitle => 'परिणाम कैसे समझें';

  @override
  String get helpReadingResultsContent =>
      'रेंज में कुल आइटम, बनाए गए बैचों की संख्या, और प्रत्येक बैच के लिए प्रारंभ, अंत और संख्या दिखाता है।';

  @override
  String get helpExampleTitle => 'उदाहरण';

  @override
  String get helpExampleContent =>
      'रेंज: 1 से 100 को 3 बैचों में\nबैच 1: 1 - 34 (34 आइटम)\nबैच 2: 35 - 67 (33 आइटम)\nबैच 3: 68 - 100 (33 आइटम)।';

  @override
  String get helpLimitsTitle => 'सत्यापन और सीमाएं';

  @override
  String get helpLimitsContent =>
      'केवल पूर्णांक गणित विभाजन उपकरण है। अतुल्यकालिक बैच कार्य निष्पादित नहीं करता है।';

  @override
  String get helpDataAndPrivacyTitle => 'स्थानीय डेटा और विज्ञापन';

  @override
  String get helpDataAndPrivacyContent =>
      'सभी गणनाएँ बिना इंटरनेट संचार के डिवाइस पर की जाती हैं। नीचे एक मानक AdMob बैनर दिखाया गया है।';
}
