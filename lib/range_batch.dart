class BatchRange {
  const BatchRange({
    required this.start,
    required this.end,
    required this.itemCount,
  });

  final BigInt start;
  final BigInt end;
  final int itemCount;
}

class RangeBatchPlan {
  const RangeBatchPlan({required this.batches});

  final List<BatchRange> batches;
}

enum RangePlanError {
  empty,
  notWholeNumbers,
  endBeforeStart,
  rangeTooLarge,
  batchLimit,
  tooManyBatches,
}

class RangePlanAttempt {
  const RangePlanAttempt.success(this.plan) : error = null;
  const RangePlanAttempt.failure(this.error) : plan = null;

  final RangeBatchPlan? plan;
  final RangePlanError? error;

  bool get isSuccess => plan != null;
}

const int maximumRangeValues = 1000000;
const int maximumBatches = 1000;

RangePlanAttempt createRangeBatchPlan({
  required String startText,
  required String endText,
  required String batchCountText,
}) {
  final values = [startText.trim(), endText.trim(), batchCountText.trim()];
  if (values.any((value) => value.isEmpty)) {
    return const RangePlanAttempt.failure(RangePlanError.empty);
  }

  final start = BigInt.tryParse(values[0]);
  final end = BigInt.tryParse(values[1]);
  final requestedBatches = BigInt.tryParse(values[2]);
  if (start == null || end == null || requestedBatches == null) {
    return const RangePlanAttempt.failure(RangePlanError.notWholeNumbers);
  }
  if (end < start) {
    return const RangePlanAttempt.failure(RangePlanError.endBeforeStart);
  }

  final valueCount = end - start + BigInt.one;
  if (valueCount > BigInt.from(maximumRangeValues)) {
    return const RangePlanAttempt.failure(RangePlanError.rangeTooLarge);
  }
  if (requestedBatches < BigInt.one ||
      requestedBatches > BigInt.from(maximumBatches)) {
    return const RangePlanAttempt.failure(RangePlanError.batchLimit);
  }
  if (requestedBatches > valueCount) {
    return const RangePlanAttempt.failure(RangePlanError.tooManyBatches);
  }

  final batchCount = requestedBatches.toInt();
  final quotient = valueCount ~/ requestedBatches;
  final remainder = (valueCount % requestedBatches).toInt();
  final batches = <BatchRange>[];
  var nextStart = start;
  for (var index = 0; index < batchCount; index++) {
    final size = quotient.toInt() + (index < remainder ? 1 : 0);
    final batchEnd = nextStart + BigInt.from(size - 1);
    batches.add(BatchRange(start: nextStart, end: batchEnd, itemCount: size));
    nextStart = batchEnd + BigInt.one;
  }
  return RangePlanAttempt.success(RangeBatchPlan(batches: batches));
}
