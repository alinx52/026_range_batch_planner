// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Planificador de lotes de rangos';

  @override
  String get appDescription =>
      'Divide sin conexión un rango entero inclusivo en lotes contiguos equilibrados.';

  @override
  String get languageMenuTooltip => 'Elegir idioma';

  @override
  String get startNumber => 'Número inicial';

  @override
  String get endNumber => 'Número final';

  @override
  String get batchCount => 'Número de lotes';

  @override
  String get planBatches => 'Planificar lotes';

  @override
  String get clearValues => 'Borrar valores';

  @override
  String get errorRequired => 'Introduce los tres valores';

  @override
  String get errorWholeNumbers => 'Introduce solo números enteros';

  @override
  String get errorEndBeforeStart =>
      'El número final debe ser igual o mayor que el inicial';

  @override
  String get errorRangeTooLarge =>
      'El rango puede contener como máximo 1.000.000 de valores';

  @override
  String get errorBatchLimit => 'Usa entre 1 y 1.000 lotes';

  @override
  String get errorTooManyBatches =>
      'Los lotes no pueden superar la cantidad de valores';

  @override
  String resultHeading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lotes equilibrados',
      one: '1 lote equilibrado',
    );
    return '$_temp0';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementos',
      one: '1 elemento',
    );
    return 'Lote $number: $start–$end ($_temp0)';
  }

  @override
  String get appearanceMenuTooltip => 'Elegir apariencia';

  @override
  String get appearanceMaterial => 'Diseño material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get privacyPolicy => 'Política de privacidad';
}
