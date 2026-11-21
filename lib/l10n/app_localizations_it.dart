// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Pianificatore di lotti di intervalli';

  @override
  String get appDescription =>
      'Divide offline un intervallo intero inclusivo in lotti contigui bilanciati.';

  @override
  String get languageMenuTooltip => 'Scegli la lingua';

  @override
  String get startNumber => 'Numero iniziale';

  @override
  String get endNumber => 'Numero finale';

  @override
  String get batchCount => 'Numero di lotti';

  @override
  String get planBatches => 'Pianifica lotti';

  @override
  String get clearValues => 'Cancella valori';

  @override
  String get errorRequired => 'Inserisci tutti e tre i valori';

  @override
  String get errorWholeNumbers => 'Inserisci solo numeri interi';

  @override
  String get errorEndBeforeStart =>
      'Il numero finale deve essere almeno uguale a quello iniziale';

  @override
  String get errorRangeTooLarge =>
      'L’intervallo può contenere al massimo 1.000.000 di valori';

  @override
  String get errorBatchLimit => 'Usa da 1 a 1.000 lotti';

  @override
  String get errorTooManyBatches =>
      'I lotti non possono superare il numero di valori';

  @override
  String resultHeading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lotti bilanciati',
      one: '1 lotto bilanciato',
    );
    return '$_temp0';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementi',
      one: '1 elemento',
    );
    return 'Lotto $number: $start–$end ($_temp0)';
  }

  @override
  String get appearanceMenuTooltip => 'Scegli l’aspetto';

  @override
  String get appearanceMaterial => 'Materiale';

  @override
  String get appearanceFlat => 'Piatto';

  @override
  String get appearanceSoft => 'Morbido';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';
}
