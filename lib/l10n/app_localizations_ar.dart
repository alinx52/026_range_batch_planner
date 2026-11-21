// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'مخطط دفعات النطاق';

  @override
  String get appDescription =>
      'قسّم نطاقًا صحيحًا شاملًا إلى دفعات متجاورة ومتوازنة دون اتصال بالإنترنت.';

  @override
  String get languageMenuTooltip => 'اختيار اللغة';

  @override
  String get startNumber => 'رقم البداية';

  @override
  String get endNumber => 'رقم النهاية';

  @override
  String get batchCount => 'عدد الدفعات';

  @override
  String get planBatches => 'تخطيط الدفعات';

  @override
  String get clearValues => 'مسح القيم';

  @override
  String get errorRequired => 'أدخل القيم الثلاث كلها';

  @override
  String get errorWholeNumbers => 'أدخل أعدادًا صحيحة فقط';

  @override
  String get errorEndBeforeStart => 'يجب ألا يقل رقم النهاية عن رقم البداية';

  @override
  String get errorRangeTooLarge =>
      'يمكن أن يحتوي النطاق على 1,000,000 قيمة كحد أقصى';

  @override
  String get errorBatchLimit => 'استخدم من 1 إلى 1,000 دفعة';

  @override
  String get errorTooManyBatches => 'لا يمكن أن يتجاوز عدد الدفعات عدد القيم';

  @override
  String resultHeading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دفعة متوازنة',
      many: '$count دفعة متوازنة',
      few: '$count دفعات متوازنة',
      two: 'دفعتان متوازنتان',
      one: 'دفعة واحدة متوازنة',
    );
    return '$_temp0';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عنصر',
      many: '$count عنصرًا',
      few: '$count عناصر',
      two: 'عنصران',
      one: 'عنصر واحد',
    );
    return 'الدفعة $number: $start–$end ($_temp0)';
  }

  @override
  String get appearanceMenuTooltip => 'اختيار المظهر';

  @override
  String get appearanceMaterial => 'مادي';

  @override
  String get appearanceFlat => 'مسطح';

  @override
  String get appearanceSoft => 'ناعم';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';
}
