// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Bereichs-Stapelplaner';

  @override
  String get appDescription =>
      'Teilt einen ganzzahligen, inklusiven Bereich offline in ausgewogene, zusammenhängende Stapel.';

  @override
  String get languageMenuTooltip => 'Sprache auswählen';

  @override
  String get startNumber => 'Startzahl';

  @override
  String get endNumber => 'Endzahl';

  @override
  String get batchCount => 'Anzahl der Stapel';

  @override
  String get planBatches => 'Stapel planen';

  @override
  String get clearValues => 'Werte löschen';

  @override
  String get errorRequired => 'Geben Sie alle drei Werte ein';

  @override
  String get errorWholeNumbers => 'Geben Sie nur ganze Zahlen ein';

  @override
  String get errorEndBeforeStart =>
      'Die Endzahl muss mindestens der Startzahl entsprechen';

  @override
  String get errorRangeTooLarge =>
      'Der Bereich darf höchstens 1.000.000 Werte enthalten';

  @override
  String get errorBatchLimit => 'Verwenden Sie 1 bis 1.000 Stapel';

  @override
  String get errorTooManyBatches =>
      'Die Stapelanzahl darf die Werteanzahl nicht überschreiten';

  @override
  String resultHeading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ausgewogene Stapel',
      one: '1 ausgewogener Stapel',
    );
    return '$_temp0';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einträge',
      one: '1 Eintrag',
    );
    return 'Stapel $number: $start–$end ($_temp0)';
  }

  @override
  String get appearanceMenuTooltip => 'Darstellung auswählen';

  @override
  String get appearanceMaterial => 'Materialdesign';

  @override
  String get appearanceFlat => 'Flach';

  @override
  String get appearanceSoft => 'Sanft';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';
}
