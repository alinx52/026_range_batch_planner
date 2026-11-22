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

  @override
  String get helpTooltip => 'Hulp en gids';

  @override
  String get helpTitle => 'Gids voor bereikbatchplanning';

  @override
  String get helpProblemSolvedTitle => 'Opgelost probleem';

  @override
  String get helpProblemSolvedContent =>
      'Verdeelt aaneengesloten numerieke bereiken offline in evenwichtige batches met exacte begin-, eind- en totaalaantallen.';

  @override
  String get helpHowToUseTitle => 'Gebruiksaanwijzing';

  @override
  String get helpHowToUseContent =>
      'Voer beginnummer, eindnummer en het gewenste aantal batches in en tik op Batches genereren.';

  @override
  String get helpReadingResultsTitle => 'Resultaten aflezen';

  @override
  String get helpReadingResultsContent =>
      'Toont het totale aantal items, aangemaakte batches en een lijst met Begin, Einde en Aantal per batch.';

  @override
  String get helpExampleTitle => 'Voorbeeld';

  @override
  String get helpExampleContent =>
      'Bereik: 1 tot 100 in 3 batches\nBatch 1: 1 - 34 (34 items)\nBatch 2: 35 - 67 (33 items)\nBatch 3: 68 - 100 (33 items).';

  @override
  String get helpLimitsTitle => 'Validatie & Beperkingen';

  @override
  String get helpLimitsContent =>
      'Wiskundig partitioneringshulpmiddel. Voert geen asynchrone batches uit en controleert geen databasetransacties.';

  @override
  String get helpDataAndPrivacyTitle => 'Lokale gegevens & Advertenties';

  @override
  String get helpDataAndPrivacyContent =>
      'Alle berekeningen worden op het apparaat uitgevoerd zonder internetverkeer. Onderaan staat een AdMob-banner.';
}
