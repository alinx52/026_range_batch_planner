// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => '範囲バッチプランナー';

  @override
  String get appDescription => '両端を含む整数範囲を、均等な連続バッチにオフラインで分割します。';

  @override
  String get languageMenuTooltip => '言語を選択';

  @override
  String get startNumber => '開始番号';

  @override
  String get endNumber => '終了番号';

  @override
  String get batchCount => 'バッチ数';

  @override
  String get planBatches => 'バッチを作成';

  @override
  String get clearValues => '値を消去';

  @override
  String get errorRequired => '3つの値をすべて入力してください';

  @override
  String get errorWholeNumbers => '整数のみを入力してください';

  @override
  String get errorEndBeforeStart => '終了番号は開始番号以上にしてください';

  @override
  String get errorRangeTooLarge => '範囲に含められる値は最大1,000,000個です';

  @override
  String get errorBatchLimit => 'バッチ数は1～1,000にしてください';

  @override
  String get errorTooManyBatches => 'バッチ数を値の数より多くすることはできません';

  @override
  String resultHeading(int count) {
    return '均等なバッチ：$count個';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    return 'バッチ$number: $start–$end（$count項目）';
  }

  @override
  String get appearanceMenuTooltip => '外観を選択';

  @override
  String get appearanceMaterial => 'マテリアル';

  @override
  String get appearanceFlat => 'フラット';

  @override
  String get appearanceSoft => 'ソフト';

  @override
  String get privacyPolicy => 'プライバシーポリシー';
}
