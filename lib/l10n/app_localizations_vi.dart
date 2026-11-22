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

  @override
  String get helpTooltip => 'Trợ giúp & Hướng dẫn';

  @override
  String get helpTitle => 'Hướng dẫn lập kế hoạch chia lô phạm vi';

  @override
  String get helpProblemSolvedTitle => 'Vấn đề giải quyết';

  @override
  String get helpProblemSolvedContent =>
      'Chia các phạm vi số liên tiếp thành các lô công việc cân bằng, tính toán ranh giới bắt đầu, kết thúc và số lượng chính xác.';

  @override
  String get helpHowToUseTitle => 'Cách sử dụng';

  @override
  String get helpHowToUseContent =>
      'Nhập Số bắt đầu, Số kết thúc và số lượng lô mong muốn (hoặc giới hạn kích thước lô), sau đó nhấn Tạo lô.';

  @override
  String get helpReadingResultsTitle => 'Đọc kết quả';

  @override
  String get helpReadingResultsContent =>
      'Hiển thị tổng số mục trong phạm vi, số lượng lô được tạo và danh sách tuần tự hiển thị Bắt đầu, Kết thúc và Số lượng.';

  @override
  String get helpExampleTitle => 'Ví dụ';

  @override
  String get helpExampleContent =>
      'Phạm vi: 1 đến 100 thành 3 lô\nLô 1: 1 - 34 (34 mục)\nLô 2: 35 - 67 (33 mục)\nLô 3: 68 - 100 (33 mục).';

  @override
  String get helpLimitsTitle => 'Xác thực & Giới hạn';

  @override
  String get helpLimitsContent =>
      'Chỉ là công cụ phân chia toán học số nguyên. Không thực hiện các tác vụ hàng loạt hoặc giám sát cơ sở dữ liệu.';

  @override
  String get helpDataAndPrivacyTitle => 'Dữ liệu cục bộ & Quảng cáo';

  @override
  String get helpDataAndPrivacyContent =>
      'Tất cả các phép tính phạm vi chạy cục bộ trên thiết bị mà không cần internet. Biểu ngữ AdMob hiển thị ở dưới cùng.';
}
