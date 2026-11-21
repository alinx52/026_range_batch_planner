import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:range_batch_planner/app.dart';
import 'package:range_batch_planner/locale_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
  }

  Future<void> enterPlan(
    WidgetTester tester, {
    required String start,
    required String end,
    required String batches,
  }) async {
    await tester.enterText(find.byKey(const ValueKey('start-number')), start);
    await tester.enterText(find.byKey(const ValueKey('end-number')), end);
    await tester.enterText(find.byKey(const ValueKey('batch-count')), batches);
    await tester.tap(find.byKey(const ValueKey('plan-batches')));
    await tester.pump();
  }

  testWidgets('first run is English and shows the complete primary workflow', (
    tester,
  ) async {
    await pumpApp(tester);

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('en'),
    );
    expect(find.text('Range Batch Planner'), findsOneWidget);
    expect(find.text('Start number'), findsOneWidget);
    expect(find.text('End number'), findsOneWidget);
    expect(find.text('Number of batches'), findsOneWidget);
    expect(find.text('Plan batches'), findsOneWidget);
    expect(find.byKey(const ValueKey('language')), findsOneWidget);
  });

  testWidgets('plans 1 through 100 into the specified six batches', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterPlan(tester, start: '1', end: '100', batches: '6');

    expect(find.text('6 balanced batches'), findsOneWidget);
    expect(find.text('Batch 1: 1–17 (17 items)'), findsOneWidget);
    expect(find.text('Batch 2: 18–34 (17 items)'), findsOneWidget);
    expect(find.text('Batch 3: 35–51 (17 items)'), findsOneWidget);
    expect(find.text('Batch 4: 52–68 (17 items)'), findsOneWidget);
    expect(find.text('Batch 5: 69–84 (16 items)'), findsOneWidget);
    expect(find.text('Batch 6: 85–100 (16 items)'), findsOneWidget);
  });

  testWidgets('handles even, signed, single-value, and single-batch plans', (
    tester,
  ) async {
    await pumpApp(tester);

    await enterPlan(tester, start: '1', end: '12', batches: '3');
    expect(find.text('Batch 1: 1–4 (4 items)'), findsOneWidget);
    expect(find.text('Batch 3: 9–12 (4 items)'), findsOneWidget);

    await enterPlan(tester, start: '-5', end: '4', batches: '3');
    expect(find.text('Batch 1: -5–-2 (4 items)'), findsOneWidget);
    expect(find.text('Batch 3: 2–4 (3 items)'), findsOneWidget);

    await enterPlan(tester, start: '7', end: '7', batches: '1');
    expect(find.text('1 balanced batch'), findsOneWidget);
    expect(find.text('Batch 1: 7–7 (1 item)'), findsOneWidget);

    await enterPlan(tester, start: '-3', end: '3', batches: '1');
    expect(find.text('Batch 1: -3–3 (7 items)'), findsOneWidget);
  });

  testWidgets('renders complete balanced coverage without gaps or overlaps', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterPlan(tester, start: '-10', end: '10', batches: '4');

    expect(find.text('Batch 1: -10–-5 (6 items)'), findsOneWidget);
    expect(find.text('Batch 2: -4–0 (5 items)'), findsOneWidget);
    expect(find.text('Batch 3: 1–5 (5 items)'), findsOneWidget);
    expect(find.text('Batch 4: 6–10 (5 items)'), findsOneWidget);
  });

  testWidgets(
    'shows every validation message and retains the last valid result',
    (tester) async {
      await pumpApp(tester);
      await enterPlan(tester, start: '1', end: '10', batches: '2');
      expect(find.text('Batch 2: 6–10 (5 items)'), findsOneWidget);

      final invalidCases = <(String, String, String, String)>[
        ('', '', '', 'Enter all three values'),
        ('one', '10', '2', 'Enter whole numbers only'),
        ('1.5', '10', '2', 'Enter whole numbers only'),
        ('1', 'Infinity', '2', 'Enter whole numbers only'),
        ('10', '1', '2', 'End number must be at least the start number'),
        ('1', '1000001', '2', 'Range can contain at most 1,000,000 values'),
        ('1', '10', '0', 'Use 1 to 1,000 batches'),
        ('1', '10', '1001', 'Use 1 to 1,000 batches'),
        ('1', '3', '4', 'Batches cannot exceed values'),
      ];
      for (final (start, end, batches, message) in invalidCases) {
        await enterPlan(tester, start: start, end: end, batches: batches);
        expect(find.text(message), findsOneWidget);
        expect(find.text('Batch 2: 6–10 (5 items)'), findsOneWidget);
      }
    },
  );

  testWidgets('clear values removes inputs, errors, and results', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterPlan(tester, start: '1', end: '4', batches: '2');
    await tester.tap(find.byKey(const ValueKey('clear-values')));
    await tester.pump();

    for (final key in ['start-number', 'end-number', 'batch-count']) {
      expect(
        tester.widget<TextField>(find.byKey(ValueKey(key))).controller?.text,
        isEmpty,
      );
    }
    expect(find.byKey(const ValueKey('results')), findsNothing);
    expect(find.byKey(const ValueKey('validation-message')), findsNothing);
  });

  testWidgets('switches to Korean immediately', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('locale-ko')));
    await tester.pumpAndSettle();

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ko'),
    );
    expect(find.text('범위 묶음 플래너'), findsOneWidget);
    expect(find.text('시작 숫자'), findsOneWidget);
    expect(find.text('묶음 계획하기'), findsOneWidget);
    expect(await AppLocalePreferences.load(), const Locale('ko'));

    await tester.pumpWidget(const SizedBox.shrink());
    await pumpApp(tester);
    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ko'),
    );
  });

  testWidgets(
    'switches to Arabic with RTL while preserving inputs and results',
    (tester) async {
      await pumpApp(tester);
      await enterPlan(tester, start: '-2', end: '3', batches: '2');

      await tester.tap(find.byKey(const ValueKey('language')));
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.byKey(const ValueKey('locale-ar')));
      await tester.tap(find.byKey(const ValueKey('locale-ar')));
      await tester.pumpAndSettle();

      expect(
        tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
        const Locale('ar'),
      );
      expect(
        Directionality.of(tester.element(find.byType(Scaffold))),
        TextDirection.rtl,
      );
      expect(find.text('رقم البداية'), findsOneWidget);
      expect(find.text('تخطيط الدفعات'), findsOneWidget);
      expect(find.text('دفعتان متوازنتان'), findsOneWidget);
      expect(
        tester
            .widget<TextField>(find.byKey(const ValueKey('start-number')))
            .controller
            ?.text,
        '-2',
      );
      expect(find.byKey(const ValueKey('batch-2')), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('restores a persisted valid locale on a later launch', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({'app.locale': 'ar'});
    await pumpApp(tester);

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ar'),
    );
    expect(find.text('مخطط دفعات النطاق'), findsOneWidget);
    expect(
      Directionality.of(tester.element(find.byType(Scaffold))),
      TextDirection.rtl,
    );
  });
}
