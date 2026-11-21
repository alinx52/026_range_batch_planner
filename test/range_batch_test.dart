import 'package:flutter_test/flutter_test.dart';
import 'package:range_batch_planner/range_batch.dart';

void main() {
  test('every plan has complete ordered coverage without gaps or overlaps', () {
    for (var valueCount = 1; valueCount <= 100; valueCount++) {
      for (var batchCount = 1; batchCount <= valueCount; batchCount++) {
        final attempt = createRangeBatchPlan(
          startText: '-25',
          endText: '${-25 + valueCount - 1}',
          batchCountText: '$batchCount',
        );
        final batches = attempt.plan!.batches;
        expect(batches.first.start, BigInt.from(-25));
        expect(batches.last.end, BigInt.from(-25 + valueCount - 1));
        for (var index = 1; index < batches.length; index++) {
          expect(batches[index].start, batches[index - 1].end + BigInt.one);
        }
        final sizes = batches.map((batch) => batch.itemCount).toList();
        expect(sizes.reduce((a, b) => a + b), valueCount);
        expect(
          sizes.reduce((a, b) => a > b ? a : b) -
              sizes.reduce((a, b) => a < b ? a : b),
          lessThanOrEqualTo(1),
        );
      }
    }
  });

  test('very large whole numbers are validated without overflow', () {
    final attempt = createRangeBatchPlan(
      startText: '-999999999999999999999999999999',
      endText: '999999999999999999999999999999',
      batchCountText: '2',
    );
    expect(attempt.error, RangePlanError.rangeTooLarge);
  });
}
