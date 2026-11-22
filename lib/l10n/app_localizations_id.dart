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

  @override
  String get helpTooltip => 'Bantuan & Panduan';

  @override
  String get helpTitle => 'Panduan Perencana Kelompok Rentang';

  @override
  String get helpProblemSolvedTitle => 'Masalah yang Diatasi';

  @override
  String get helpProblemSolvedContent =>
      'Membagi rentang angka berurutan menjadi kelompok kerja yang seimbang, menghitung batas awal, akhir, dan jumlah item.';

  @override
  String get helpHowToUseTitle => 'Cara Penggunaan';

  @override
  String get helpHowToUseContent =>
      'Masukkan Nomor Awal, Nomor Akhir, dan jumlah kelompok yang diinginkan, lalu ketuk Hasilkan kelompok.';

  @override
  String get helpReadingResultsTitle => 'Membaca Hasil';

  @override
  String get helpReadingResultsContent =>
      'Menampilkan total item dalam rentang, jumlah kelompok yang dibuat, serta daftar Awal, Akhir, dan Jumlah tiap kelompok.';

  @override
  String get helpExampleTitle => 'Contoh';

  @override
  String get helpExampleContent =>
      'Rentang: 1 hingga 100 menjadi 3 kelompok\nKelompok 1: 1 - 34 (34 item)\nKelompok 2: 35 - 67 (33 item)\nKelompok 3: 68 - 100 (33 item).';

  @override
  String get helpLimitsTitle => 'Validasi & Batasan';

  @override
  String get helpLimitsContent =>
      'Hanya alat pembagian matematika bilangan bulat. Tidak mengeksekusi proses batch asinkron atau memantau transaksi database.';

  @override
  String get helpDataAndPrivacyTitle => 'Data Lokal & Iklan';

  @override
  String get helpDataAndPrivacyContent =>
      'Semua perhitungan rentang berjalan secara lokal di perangkat tanpa internet. Spanduk AdMob ditampilkan di bawah.';
}
