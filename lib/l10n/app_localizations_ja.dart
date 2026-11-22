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

  @override
  String get helpTooltip => 'ヘルプと使い方';

  @override
  String get helpTitle => '範囲バッチ分割プランナーガイド';

  @override
  String get helpProblemSolvedTitle => '解決する課題';

  @override
  String get helpProblemSolvedContent =>
      '連続する数値範囲（ID、シリアル番号など）を指定した数の均等な作業バッチに分割し、各バッチの開始値、終了値、件数を計算します。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '開始番号、終了番号、分割したいバッチ数（またはバッチサイズ上限）を入力し、「バッチを生成」をタップします。';

  @override
  String get helpReadingResultsTitle => '結果の見方';

  @override
  String get helpReadingResultsContent =>
      '範囲内の総件数、作成されたバッチ数、各バッチの開始・終了・件数のリストが順序正しく表示されます。';

  @override
  String get helpExampleTitle => '具体例';

  @override
  String get helpExampleContent =>
      '範囲: 1〜100、3バッチに分割\nバッチ 1: 1〜34 (34件)\nバッチ 2: 35〜67 (33件)\nバッチ 3: 68〜100 (33件)。';

  @override
  String get helpLimitsTitle => '検証と制限事項';

  @override
  String get helpLimitsContent =>
      '整数演算による分割ツールです。非同期ジョブの実行、DBワーカーの負荷監視、トランザクション完了を保証するものではありません。';

  @override
  String get helpDataAndPrivacyTitle => 'ローカルデータと広告';

  @override
  String get helpDataAndPrivacyContent =>
      'すべての計算は外部通信なしで端末内でのみ行われます。画面下部に標準AdMobバナーが表示されます。';
}
