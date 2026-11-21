// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Perencana Batch Rentang';

  @override
  String get appDescription =>
      'Bagi rentang bilangan bulat inklusif menjadi batch berurutan yang seimbang sepenuhnya secara luring.';

  @override
  String get languageMenuTooltip => 'Pilih bahasa';

  @override
  String get startNumber => 'Angka awal';

  @override
  String get endNumber => 'Angka akhir';

  @override
  String get batchCount => 'Jumlah batch';

  @override
  String get planBatches => 'Rencanakan batch';

  @override
  String get clearValues => 'Hapus nilai';

  @override
  String get errorRequired => 'Masukkan ketiga nilai';

  @override
  String get errorWholeNumbers => 'Masukkan bilangan bulat saja';

  @override
  String get errorEndBeforeStart =>
      'Angka akhir harus sama dengan atau lebih besar dari angka awal';

  @override
  String get errorRangeTooLarge =>
      'Rentang hanya boleh memuat maksimal 1.000.000 nilai';

  @override
  String get errorBatchLimit => 'Gunakan 1 hingga 1.000 batch';

  @override
  String get errorTooManyBatches =>
      'Jumlah batch tidak boleh melebihi jumlah nilai';

  @override
  String resultHeading(int count) {
    return '$count batch seimbang';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    return 'Batch $number: $start–$end ($count item)';
  }

  @override
  String get appearanceMenuTooltip => 'Pilih tampilan';

  @override
  String get appearanceMaterial => 'Desain material';

  @override
  String get appearanceFlat => 'Datar';

  @override
  String get appearanceSoft => 'Lembut';

  @override
  String get privacyPolicy => 'Kebijakan privasi';
}
