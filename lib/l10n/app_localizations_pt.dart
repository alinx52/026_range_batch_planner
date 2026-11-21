// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Planeador de lotes de intervalo';

  @override
  String get appDescription =>
      'Divide offline um intervalo inteiro inclusivo em lotes contíguos equilibrados.';

  @override
  String get languageMenuTooltip => 'Escolher idioma';

  @override
  String get startNumber => 'Número inicial';

  @override
  String get endNumber => 'Número final';

  @override
  String get batchCount => 'Número de lotes';

  @override
  String get planBatches => 'Planear lotes';

  @override
  String get clearValues => 'Limpar valores';

  @override
  String get errorRequired => 'Introduza os três valores';

  @override
  String get errorWholeNumbers => 'Introduza apenas números inteiros';

  @override
  String get errorEndBeforeStart =>
      'O número final deve ser igual ou superior ao inicial';

  @override
  String get errorRangeTooLarge =>
      'O intervalo pode conter no máximo 1 000 000 de valores';

  @override
  String get errorBatchLimit => 'Utilize de 1 a 1 000 lotes';

  @override
  String get errorTooManyBatches =>
      'A quantidade de lotes não pode exceder a de valores';

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
      other: '$count itens',
      one: '1 item',
    );
    return 'Lote $number: $start–$end ($_temp0)';
  }

  @override
  String get appearanceMenuTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Design material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get privacyPolicy => 'Política de privacidade';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Planejador de lotes de intervalo';

  @override
  String get appDescription =>
      'Divide offline um intervalo inteiro inclusivo em lotes contíguos equilibrados.';

  @override
  String get languageMenuTooltip => 'Escolher idioma';

  @override
  String get startNumber => 'Número inicial';

  @override
  String get endNumber => 'Número final';

  @override
  String get batchCount => 'Número de lotes';

  @override
  String get planBatches => 'Planejar lotes';

  @override
  String get clearValues => 'Limpar valores';

  @override
  String get errorRequired => 'Informe os três valores';

  @override
  String get errorWholeNumbers => 'Informe apenas números inteiros';

  @override
  String get errorEndBeforeStart =>
      'O número final deve ser igual ou maior que o inicial';

  @override
  String get errorRangeTooLarge =>
      'O intervalo pode conter no máximo 1.000.000 de valores';

  @override
  String get errorBatchLimit => 'Use de 1 a 1.000 lotes';

  @override
  String get errorTooManyBatches =>
      'A quantidade de lotes não pode exceder a de valores';

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
      other: '$count itens',
      one: '1 item',
    );
    return 'Lote $number: $start–$end ($_temp0)';
  }

  @override
  String get appearanceMenuTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Design material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get privacyPolicy => 'Política de privacidade';
}
