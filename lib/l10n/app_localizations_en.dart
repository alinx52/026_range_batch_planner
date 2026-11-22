// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Range Batch Planner';

  @override
  String get appDescription =>
      'Divide an inclusive integer range into balanced contiguous batches entirely offline.';

  @override
  String get languageMenuTooltip => 'Choose language';

  @override
  String get startNumber => 'Start number';

  @override
  String get endNumber => 'End number';

  @override
  String get batchCount => 'Number of batches';

  @override
  String get planBatches => 'Plan batches';

  @override
  String get clearValues => 'Clear values';

  @override
  String get errorRequired => 'Enter all three values';

  @override
  String get errorWholeNumbers => 'Enter whole numbers only';

  @override
  String get errorEndBeforeStart =>
      'End number must be at least the start number';

  @override
  String get errorRangeTooLarge => 'Range can contain at most 1,000,000 values';

  @override
  String get errorBatchLimit => 'Use 1 to 1,000 batches';

  @override
  String get errorTooManyBatches => 'Batches cannot exceed values';

  @override
  String resultHeading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count balanced batches',
      one: '1 balanced batch',
    );
    return '$_temp0';
  }

  @override
  String batchRow(int number, String start, String end, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return 'Batch $number: $start–$end ($_temp0)';
  }

  @override
  String get appearanceMenuTooltip => 'Choose appearance';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flat';

  @override
  String get appearanceSoft => 'Soft';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get helpTooltip => 'Help & Guide';

  @override
  String get helpTitle => 'Range Batch Planner Guide';

  @override
  String get helpProblemSolvedTitle => 'Problem Solved';

  @override
  String get helpProblemSolvedContent =>
      'Splits contiguous numeric ID ranges into balanced work batches offline, calculating precise start, end, and item count boundaries for each partition.';

  @override
  String get helpHowToUseTitle => 'How to Use';

  @override
  String get helpHowToUseContent =>
      'Input the Start Number, End Number, and desired number of batches (or batch size limit), then tap Generate batches.';

  @override
  String get helpReadingResultsTitle => 'Reading Results';

  @override
  String get helpReadingResultsContent =>
      'Displays total items in the range, number of batches created, and a sequential list showing Start, End, and Count for each batch.';

  @override
  String get helpExampleTitle => 'Example';

  @override
  String get helpExampleContent =>
      'Range: 1 to 100 into 3 batches\nBatch 1: 1 - 34 (34 items)\nBatch 2: 35 - 67 (33 items)\nBatch 3: 68 - 100 (33 items).';

  @override
  String get helpLimitsTitle => 'Validation & Limitations';

  @override
  String get helpLimitsContent =>
      'Integer math partitioning tool only. Does not execute asynchronous batch jobs, monitor database workers, or guarantee transaction success.';

  @override
  String get helpDataAndPrivacyTitle => 'Local Data & Ads';

  @override
  String get helpDataAndPrivacyContent =>
      'All range calculations run strictly on-device without internet communication. A standard AdMob banner is displayed below.';
}
