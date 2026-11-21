import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  const requiredLocales = [
    'en',
    'ko',
    'ja',
    'zh_Hans',
    'zh_Hant',
    'es',
    'fr',
    'de',
    'pt_BR',
    'it',
    'nl',
    'ru',
    'ar',
    'hi',
    'id',
    'vi',
  ];

  test('every required ARB exists and has the complete English key set', () {
    final directory = Directory('lib/l10n');
    final english = _messages(File('${directory.path}/app_en.arb'));

    for (final locale in requiredLocales) {
      final file = File('${directory.path}/app_$locale.arb');
      expect(file.existsSync(), isTrue, reason: 'Missing ${file.path}');
      expect(
        _messages(file).keys.toSet(),
        english.keys.toSet(),
        reason: locale,
      );
    }
  });

  test('non-English catalogs localize the core user-facing copy', () {
    final english = _messages(File('lib/l10n/app_en.arb'));
    const coreKeys = [
      'appTitle',
      'appDescription',
      'languageMenuTooltip',
      'startNumber',
      'endNumber',
      'batchCount',
      'planBatches',
      'clearValues',
      'errorRequired',
      'privacyPolicy',
    ];
    for (final locale in requiredLocales.skip(1)) {
      final messages = _messages(File('lib/l10n/app_$locale.arb'));
      for (final key in coreKeys) {
        expect(messages[key], isNot(english[key]), reason: '$locale:$key');
      }
    }
  });
}

Map<String, Object?> _messages(File file) {
  final json = jsonDecode(file.readAsStringSync()) as Map<String, Object?>;
  return Map.fromEntries(
    json.entries.where((entry) => !entry.key.startsWith('@')),
  );
}
