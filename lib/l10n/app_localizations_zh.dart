// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '范围批次规划器';

  @override
  String get appDescription => '完全离线地将含首尾的整数范围划分为均衡的连续批次。';

  @override
  String get languageMenuTooltip => '选择语言';

  @override
  String get startNumber => '起始数字';

  @override
  String get endNumber => '结束数字';

  @override
  String get batchCount => '批次数量';

  @override
  String get planBatches => '规划批次';

  @override
  String get clearValues => '清除数值';

  @override
  String get errorRequired => '请输入全部三个数值';

  @override
  String get errorWholeNumbers => '只能输入整数';

  @override
  String get errorEndBeforeStart => '结束数字必须大于或等于起始数字';

  @override
  String get errorRangeTooLarge => '范围最多可包含 1,000,000 个值';

  @override
  String get errorBatchLimit => '批次数量应为 1 至 1,000';

  @override
  String get errorTooManyBatches => '批次数量不能超过值的数量';

  @override
  String resultHeading(int count) {
    return '$count 个均衡批次';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    return '批次 $number：$start–$end（$count 项）';
  }

  @override
  String get appearanceMenuTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get privacyPolicy => '隐私政策';
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class AppLocalizationsZhHans extends AppLocalizationsZh {
  AppLocalizationsZhHans() : super('zh_Hans');

  @override
  String get appTitle => '范围批次规划器';

  @override
  String get appDescription => '完全离线地将含首尾的整数范围划分为均衡的连续批次。';

  @override
  String get languageMenuTooltip => '选择语言';

  @override
  String get startNumber => '起始数字';

  @override
  String get endNumber => '结束数字';

  @override
  String get batchCount => '批次数量';

  @override
  String get planBatches => '规划批次';

  @override
  String get clearValues => '清除数值';

  @override
  String get errorRequired => '请输入全部三个数值';

  @override
  String get errorWholeNumbers => '只能输入整数';

  @override
  String get errorEndBeforeStart => '结束数字必须大于或等于起始数字';

  @override
  String get errorRangeTooLarge => '范围最多可包含 1,000,000 个值';

  @override
  String get errorBatchLimit => '批次数量应为 1 至 1,000';

  @override
  String get errorTooManyBatches => '批次数量不能超过值的数量';

  @override
  String resultHeading(int count) {
    return '$count 个均衡批次';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    return '批次 $number：$start–$end（$count 项）';
  }

  @override
  String get appearanceMenuTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get privacyPolicy => '隐私政策';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => '範圍批次規劃器';

  @override
  String get appDescription => '完全離線地將包含首尾的整數範圍分成均衡的連續批次。';

  @override
  String get languageMenuTooltip => '選擇語言';

  @override
  String get startNumber => '起始數字';

  @override
  String get endNumber => '結束數字';

  @override
  String get batchCount => '批次數量';

  @override
  String get planBatches => '規劃批次';

  @override
  String get clearValues => '清除數值';

  @override
  String get errorRequired => '請輸入全部三個數值';

  @override
  String get errorWholeNumbers => '只能輸入整數';

  @override
  String get errorEndBeforeStart => '結束數字必須大於或等於起始數字';

  @override
  String get errorRangeTooLarge => '範圍最多可包含 1,000,000 個值';

  @override
  String get errorBatchLimit => '批次數量應為 1 至 1,000';

  @override
  String get errorTooManyBatches => '批次數量不能超過值的數量';

  @override
  String resultHeading(int count) {
    return '$count 個均衡批次';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    return '批次 $number：$start–$end（$count 項）';
  }

  @override
  String get appearanceMenuTooltip => '選擇外觀';

  @override
  String get appearanceMaterial => '質感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get privacyPolicy => '隱私權政策';
}
