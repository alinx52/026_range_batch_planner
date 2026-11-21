// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '범위 묶음 플래너';

  @override
  String get appDescription =>
      '포함 범위의 정수를 균형 잡힌 연속 묶음으로 나눕니다. 모든 작업은 오프라인에서 처리됩니다.';

  @override
  String get languageMenuTooltip => '언어 선택';

  @override
  String get startNumber => '시작 숫자';

  @override
  String get endNumber => '끝 숫자';

  @override
  String get batchCount => '묶음 개수';

  @override
  String get planBatches => '묶음 계획하기';

  @override
  String get clearValues => '값 지우기';

  @override
  String get errorRequired => '세 값을 모두 입력하세요';

  @override
  String get errorWholeNumbers => '정수만 입력하세요';

  @override
  String get errorEndBeforeStart => '끝 숫자는 시작 숫자 이상이어야 합니다';

  @override
  String get errorRangeTooLarge => '범위에는 최대 1,000,000개의 값만 포함할 수 있습니다';

  @override
  String get errorBatchLimit => '묶음 개수는 1~1,000개로 지정하세요';

  @override
  String get errorTooManyBatches => '묶음 개수는 값 개수를 초과할 수 없습니다';

  @override
  String resultHeading(int count) {
    return '균형 잡힌 묶음 $count개';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    return '묶음 $number: $start–$end (항목 $count개)';
  }

  @override
  String get appearanceMenuTooltip => '화면 스타일 선택';

  @override
  String get appearanceMaterial => '머티리얼';

  @override
  String get appearanceFlat => '평면';

  @override
  String get appearanceSoft => '부드러움';

  @override
  String get privacyPolicy => '개인정보처리방침';
}
