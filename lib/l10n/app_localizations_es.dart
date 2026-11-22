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

  @override
  String get helpTooltip => 'Ayuda y guía';

  @override
  String get helpTitle => 'Guía del planificador de lotes por rangos';

  @override
  String get helpProblemSolvedTitle => 'Problema que resuelve';

  @override
  String get helpProblemSolvedContent =>
      'Divide rangos numéricos continuos en lotes de trabajo equilibrados, calculando inicio, fin y recuento de cada partición.';

  @override
  String get helpHowToUseTitle => 'Cómo usar';

  @override
  String get helpHowToUseContent =>
      'Introduce el número de inicio, fin y la cantidad de lotes deseada (o tamaño por lote), y pulsa Generar lotes.';

  @override
  String get helpReadingResultsTitle => 'Interpretación de resultados';

  @override
  String get helpReadingResultsContent =>
      'Muestra el total de elementos, número de lotes creados y una lista secuencial con Inicio, Fin y Recuento por lote.';

  @override
  String get helpExampleTitle => 'Ejemplo';

  @override
  String get helpExampleContent =>
      'Rango: 1 al 100 en 3 lotes\nLote 1: 1 - 34 (34 elementos)\nLote 2: 35 - 67 (33 elementos)\nLote 3: 68 - 100 (33 elementos).';

  @override
  String get helpLimitsTitle => 'Validaciones y límites';

  @override
  String get helpLimitsContent =>
      'Calculadora de partición matemática. No ejecuta tareas por lotes en servidores ni monitoriza transacciones de bases de datos.';

  @override
  String get helpDataAndPrivacyTitle => 'Datos locales y anuncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todos los cálculos de rangos se realizan en el dispositivo sin conexión. Se muestra un banner estándar de AdMob.';
}
