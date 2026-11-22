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

  @override
  String get helpTooltip => 'Guida e aiuto';

  @override
  String get helpTitle => 'Guida alla pianificazione lotti per intervalli';

  @override
  String get helpProblemSolvedTitle => 'Problema risolto';

  @override
  String get helpProblemSolvedContent =>
      'Divide intervalli numerici continui in lotti di lavoro bilanciati, calcolando inizio, fine e conteggio di ogni partizione.';

  @override
  String get helpHowToUseTitle => 'Come usare';

  @override
  String get helpHowToUseContent =>
      'Inserisci numero iniziale, finale e il numero di lotti desiderato (o dimensione per lotto), quindi tocca Genera lotti.';

  @override
  String get helpReadingResultsTitle => 'Lettura dei risultati';

  @override
  String get helpReadingResultsContent =>
      'Mostra il totale degli elementi, il numero di lotti creati e l\'elenco con Inizio, Fine e Conteggio per ciascun lotto.';

  @override
  String get helpExampleTitle => 'Esempio';

  @override
  String get helpExampleContent =>
      'Intervallo: da 1 a 100 in 3 lotti\nLotto 1: 1 - 34 (34 elementi)\nLotto 2: 35 - 67 (33 elementi)\nLotto 3: 68 - 100 (33 elementi).';

  @override
  String get helpLimitsTitle => 'Validazione e limitazioni';

  @override
  String get helpLimitsContent =>
      'Strumento di ripartizione matematica. Non esegue processi batch asincroni né monitora transazioni di database.';

  @override
  String get helpDataAndPrivacyTitle => 'Dati locali e annunci';

  @override
  String get helpDataAndPrivacyContent =>
      'Tutti i calcoli avvengono localmente sul dispositivo senza connessione internet. È visibile un banner AdMob standard.';
}
