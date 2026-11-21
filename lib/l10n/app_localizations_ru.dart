// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Планировщик пакетов диапазона';

  @override
  String get appDescription =>
      'Разделяет включительный целочисленный диапазон на сбалансированные непрерывные пакеты без подключения к сети.';

  @override
  String get languageMenuTooltip => 'Выбрать язык';

  @override
  String get startNumber => 'Начальное число';

  @override
  String get endNumber => 'Конечное число';

  @override
  String get batchCount => 'Количество пакетов';

  @override
  String get planBatches => 'Спланировать пакеты';

  @override
  String get clearValues => 'Очистить значения';

  @override
  String get errorRequired => 'Введите все три значения';

  @override
  String get errorWholeNumbers => 'Вводите только целые числа';

  @override
  String get errorEndBeforeStart =>
      'Конечное число должно быть не меньше начального';

  @override
  String get errorRangeTooLarge =>
      'Диапазон может содержать не более 1 000 000 значений';

  @override
  String get errorBatchLimit => 'Укажите от 1 до 1 000 пакетов';

  @override
  String get errorTooManyBatches =>
      'Количество пакетов не может превышать количество значений';

  @override
  String resultHeading(int count) {
    return 'Сбалансированных пакетов: $count';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    return 'Пакет $number: $start–$end (элементов: $count)';
  }

  @override
  String get appearanceMenuTooltip => 'Выбрать оформление';

  @override
  String get appearanceMaterial => 'Материальный';

  @override
  String get appearanceFlat => 'Плоский';

  @override
  String get appearanceSoft => 'Мягкий';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';
}
