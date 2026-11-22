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

  @override
  String get helpTooltip => 'Справка и руководство';

  @override
  String get helpTitle => 'Руководство по планированию пакетов диапазонов';

  @override
  String get helpProblemSolvedTitle => 'Решаемая задача';

  @override
  String get helpProblemSolvedContent =>
      'Разбивает непрерывные диапазоны чисел на сбалансированные пакеты, вычисляя точные границы начала, конца и количества.';

  @override
  String get helpHowToUseTitle => 'Как использовать';

  @override
  String get helpHowToUseContent =>
      'Введите начальное число, конечное число и желаемое количество пакетов, затем нажмите «Сгенерировать пакеты».';

  @override
  String get helpReadingResultsTitle => 'Чтение результатов';

  @override
  String get helpReadingResultsContent =>
      'Отображает общее число элементов, количество пакетов и последовательный список с началом, концом и числом элементов.';

  @override
  String get helpExampleTitle => 'Пример';

  @override
  String get helpExampleContent =>
      'Диапазон: от 1 до 100 на 3 пакета\nПакет 1: 1 - 34 (34 элемента)\nПакет 2: 35 - 67 (33 элемента)\nПакет 3: 68 - 100 (33 элемента).';

  @override
  String get helpLimitsTitle => 'Проверка и ограничения';

  @override
  String get helpLimitsContent =>
      'Инструмент математического разбиения чисел. Не запускает асинхронные задачи и не контролирует транзакции баз данных.';

  @override
  String get helpDataAndPrivacyTitle => 'Локальные данные и реклама';

  @override
  String get helpDataAndPrivacyContent =>
      'Все вычисления диапазонов выполняются локально на устройстве без интернета. Внизу отображается баннер AdMob.';
}
