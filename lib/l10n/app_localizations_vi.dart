// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Trình lập lô theo phạm vi';

  @override
  String get appDescription =>
      'Chia ngoại tuyến một phạm vi số nguyên bao gồm hai đầu thành các lô liền nhau cân bằng.';

  @override
  String get languageMenuTooltip => 'Chọn ngôn ngữ';

  @override
  String get startNumber => 'Số bắt đầu';

  @override
  String get endNumber => 'Số kết thúc';

  @override
  String get batchCount => 'Số lượng lô';

  @override
  String get planBatches => 'Lập kế hoạch lô';

  @override
  String get clearValues => 'Xóa giá trị';

  @override
  String get errorRequired => 'Hãy nhập đủ cả ba giá trị';

  @override
  String get errorWholeNumbers => 'Chỉ nhập số nguyên';

  @override
  String get errorEndBeforeStart =>
      'Số kết thúc phải lớn hơn hoặc bằng số bắt đầu';

  @override
  String get errorRangeTooLarge =>
      'Phạm vi chỉ được chứa tối đa 1.000.000 giá trị';

  @override
  String get errorBatchLimit => 'Sử dụng từ 1 đến 1.000 lô';

  @override
  String get errorTooManyBatches => 'Số lô không được vượt quá số giá trị';

  @override
  String resultHeading(int count) {
    return '$count lô cân bằng';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    return 'Lô $number: $start–$end ($count mục)';
  }

  @override
  String get appearanceMenuTooltip => 'Chọn giao diện';

  @override
  String get appearanceMaterial => 'Chất liệu';

  @override
  String get appearanceFlat => 'Phẳng';

  @override
  String get appearanceSoft => 'Mềm mại';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';
}
