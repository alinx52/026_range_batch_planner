// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Planificateur de lots de plage';

  @override
  String get appDescription =>
      'Divisez hors ligne une plage entière inclusive en lots contigus équilibrés.';

  @override
  String get languageMenuTooltip => 'Choisir la langue';

  @override
  String get startNumber => 'Nombre de début';

  @override
  String get endNumber => 'Nombre de fin';

  @override
  String get batchCount => 'Nombre de lots';

  @override
  String get planBatches => 'Planifier les lots';

  @override
  String get clearValues => 'Effacer les valeurs';

  @override
  String get errorRequired => 'Saisissez les trois valeurs';

  @override
  String get errorWholeNumbers => 'Saisissez uniquement des nombres entiers';

  @override
  String get errorEndBeforeStart =>
      'Le nombre de fin doit être supérieur ou égal au nombre de début';

  @override
  String get errorRangeTooLarge =>
      'La plage peut contenir au maximum 1 000 000 de valeurs';

  @override
  String get errorBatchLimit => 'Utilisez de 1 à 1 000 lots';

  @override
  String get errorTooManyBatches =>
      'Le nombre de lots ne peut pas dépasser le nombre de valeurs';

  @override
  String resultHeading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lots équilibrés',
      one: '1 lot équilibré',
    );
    return '$_temp0';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments',
      one: '1 élément',
    );
    return 'Lot $number : $start–$end ($_temp0)';
  }

  @override
  String get appearanceMenuTooltip => 'Choisir l’apparence';

  @override
  String get appearanceMaterial => 'Matériau';

  @override
  String get appearanceFlat => 'Plat';

  @override
  String get appearanceSoft => 'Doux';

  @override
  String get privacyPolicy => 'Politique de confidentialité';
}
