// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Bereikbatchplanner';

  @override
  String get appDescription =>
      'Verdeel offline een inclusief geheel-getalbereik in evenwichtige aaneengesloten batches.';

  @override
  String get languageMenuTooltip => 'Taal kiezen';

  @override
  String get startNumber => 'Startgetal';

  @override
  String get endNumber => 'Eindgetal';

  @override
  String get batchCount => 'Aantal batches';

  @override
  String get planBatches => 'Batches plannen';

  @override
  String get clearValues => 'Waarden wissen';

  @override
  String get errorRequired => 'Vul alle drie de waarden in';

  @override
  String get errorWholeNumbers => 'Voer alleen gehele getallen in';

  @override
  String get errorEndBeforeStart =>
      'Het eindgetal moet minstens gelijk zijn aan het startgetal';

  @override
  String get errorRangeTooLarge =>
      'Het bereik mag maximaal 1.000.000 waarden bevatten';

  @override
  String get errorBatchLimit => 'Gebruik 1 tot 1.000 batches';

  @override
  String get errorTooManyBatches =>
      'Het aantal batches mag niet groter zijn dan het aantal waarden';

  @override
  String resultHeading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count evenwichtige batches',
      one: '1 evenwichtige batch',
    );
    return '$_temp0';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count onderdelen',
      one: '1 onderdeel',
    );
    return 'Deel $number: $start–$end ($_temp0)';
  }

  @override
  String get appearanceMenuTooltip => 'Weergave kiezen';

  @override
  String get appearanceMaterial => 'Materiaal';

  @override
  String get appearanceFlat => 'Vlak';

  @override
  String get appearanceSoft => 'Zacht';

  @override
  String get privacyPolicy => 'Privacybeleid';
}
