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

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => '连续区间分批规划指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '离线将连续的整数编号区间（数据ID、流水号）划分为数量均衡的工作批次，计算每个分块的精确起止值与项目数量。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '输入起始编号、结束编号以及期望的分批数量（或单批次容量上限），然后点击“生成批次”。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent =>
      '显示区间总项数、生成的批次总数，以及包含每批次起始值、结束值与项数的顺序清单。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '范围: 1 至 100，划分为3批\n批次 1: 1 - 34 (34项)\n批次 2: 35 - 67 (33项)\n批次 3: 68 - 100 (33项)。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '仅为纯整数区间数学划分工具。不执行后台异步批处理任务，不监控数据库线程，不保证事务成功。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有区间划分计算均在本地完成，无网络传输。屏幕底部展示标准Google AdMob横幅广告。';
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

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => '连续区间分批规划指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '离线将连续的整数编号区间（数据ID、流水号）划分为数量均衡的工作批次，计算每个分块的精确起止值与项目数量。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '输入起始编号、结束编号以及期望的分批数量（或单批次容量上限），然后点击“生成批次”。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent =>
      '显示区间总项数、生成的批次总数，以及包含每批次起始值、结束值与项数的顺序清单。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '范围: 1 至 100，划分为3批\n批次 1: 1 - 34 (34项)\n批次 2: 35 - 67 (33项)\n批次 3: 68 - 100 (33项)。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '仅为纯整数区间数学划分工具。不执行后台异步批处理任务，不监控数据库线程，不保证事务成功。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有区间划分计算均在本地完成，无网络传输。屏幕底部展示标准Google AdMob横幅广告。';
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

  @override
  String get helpTooltip => '說明與指南';

  @override
  String get helpTitle => '連續區間分批規劃指南';

  @override
  String get helpProblemSolvedTitle => '解決的問題';

  @override
  String get helpProblemSolvedContent =>
      '離線將連續的整數編號區間（資料ID、序號）劃分為數量均衡的工作批次，計算各區塊的精確起訖值與項目數量。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent => '輸入起始編號、結束編號以及預期的分批數量（或單批大小上限），接著點擊「產生批次」。';

  @override
  String get helpReadingResultsTitle => '查看結果';

  @override
  String get helpReadingResultsContent =>
      '顯示區間總數量、產生的批次總數，以及列出各批次起訖值與項目數量的順序清單。';

  @override
  String get helpExampleTitle => '範例';

  @override
  String get helpExampleContent =>
      '範圍: 1 至 100，劃分為3批\n批次 1: 1 - 34 (34項)\n批次 2: 35 - 67 (33項)\n批次 3: 68 - 100 (33項)。';

  @override
  String get helpLimitsTitle => '驗證與限制';

  @override
  String get helpLimitsContent => '僅為整數區間數學分割工具。不執行背景批次作業，不監控資料庫線程，不保證事務成功。';

  @override
  String get helpDataAndPrivacyTitle => '本機資料與廣告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有區間分割計算均在裝置本機完成，無網路傳輸。螢幕底部顯示標準Google AdMob橫幅廣告。';
}
