import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ad_banner.dart';
import 'app_language_menu.dart';
import 'app_config.dart';
import 'design_system.dart';
import 'l10n/app_localizations.dart';
import 'range_batch.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.locale,
    required this.onLocaleChanged,
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;
  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _startController = TextEditingController();
  final _endController = TextEditingController();
  final _batchCountController = TextEditingController();
  final _scrollController = ScrollController();
  RangeBatchPlan? _plan;
  RangePlanError? _error;

  @override
  void dispose() {
    _startController.dispose();
    _endController.dispose();
    _batchCountController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _planBatches() {
    FocusScope.of(context).unfocus();
    final attempt = createRangeBatchPlan(
      startText: _startController.text,
      endText: _endController.text,
      batchCountText: _batchCountController.text,
    );
    setState(() {
      _error = attempt.error;
      if (attempt.isSuccess) {
        _plan = attempt.plan;
      }
    });
  }

  void _clear() {
    _startController.clear();
    _endController.clear();
    _batchCountController.clear();
    setState(() {
      _error = null;
      _plan = null;
    });
    FocusScope.of(context).unfocus();
  }

  String _errorMessage(AppLocalizations strings, RangePlanError error) {
    return switch (error) {
      RangePlanError.empty => strings.errorRequired,
      RangePlanError.notWholeNumbers => strings.errorWholeNumbers,
      RangePlanError.endBeforeStart => strings.errorEndBeforeStart,
      RangePlanError.rangeTooLarge => strings.errorRangeTooLarge,
      RangePlanError.batchLimit => strings.errorBatchLimit,
      RangePlanError.tooManyBatches => strings.errorTooManyBatches,
    };
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.appTitle),
        actions: [
          AppLanguageMenu(
            locale: widget.locale,
            onSelected: widget.onLocaleChanged,
            tooltip: strings.languageMenuTooltip,
          ),
        ],
      ),
      bottomNavigationBar: const AdBanner(),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 640),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          strings.appDescription,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant,
                              ),
                        ),
                        const SizedBox(height: 16),
                        _InputSurface(
                          startController: _startController,
                          endController: _endController,
                          batchCountController: _batchCountController,
                          onSubmitted: _planBatches,
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: FilledButton.icon(
                                key: const ValueKey('plan-batches'),
                                onPressed: _planBatches,
                                icon: const Icon(Icons.segment, size: 20),
                                label: Text(strings.planBatches),
                              ),
                            ),
                            const SizedBox(width: 8),
                            TextButton.icon(
                              key: const ValueKey('clear-values'),
                              onPressed: _clear,
                              icon: const Icon(Icons.clear_all, size: 20),
                              label: Text(strings.clearValues),
                            ),
                          ],
                        ),
                        if (_error case final error?) ...[
                          const SizedBox(height: 12),
                          _ValidationMessage(
                            message: _errorMessage(strings, error),
                          ),
                        ],
                        if (_plan case final plan?) ...[
                          const SizedBox(height: 20),
                          _Results(plan: plan),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
            _Footer(
              designStyle: widget.designStyle,
              onDesignStyleChanged: widget.onDesignStyleChanged,
            ),
          ],
        ),
      ),
    );
  }
}

class _InputSurface extends StatelessWidget {
  const _InputSurface({
    required this.startController,
    required this.endController,
    required this.batchCountController,
    required this.onSubmitted,
  });

  final TextEditingController startController;
  final TextEditingController endController;
  final TextEditingController batchCountController;
  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    const inputType = TextInputType.numberWithOptions(signed: true);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    key: const ValueKey('start-number'),
                    controller: startController,
                    keyboardType: inputType,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: strings.startNumber,
                      prefixIcon: const Icon(Icons.first_page),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    key: const ValueKey('end-number'),
                    controller: endController,
                    keyboardType: inputType,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: strings.endNumber,
                      prefixIcon: const Icon(Icons.last_page),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextField(
              key: const ValueKey('batch-count'),
              controller: batchCountController,
              keyboardType: inputType,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => onSubmitted(),
              decoration: InputDecoration(
                labelText: strings.batchCount,
                prefixIcon: const Icon(Icons.view_week_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ValidationMessage extends StatelessWidget {
  const _ValidationMessage({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Semantics(
      liveRegion: true,
      child: Container(
        key: const ValueKey('validation-message'),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: colors.errorContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(Icons.error_outline, color: colors.onErrorContainer),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: TextStyle(color: colors.onErrorContainer),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Results extends StatelessWidget {
  const _Results({required this.plan});

  final RangeBatchPlan plan;

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    final colors = Theme.of(context).colorScheme;
    return Column(
      key: const ValueKey('results'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Icon(Icons.check_circle_outline, color: colors.primary),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                strings.resultHeading(plan.batches.length),
                style: Theme.of(context).textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        DecoratedBox(
          decoration: BoxDecoration(
            color: colors.surfaceContainerLow,
            border: Border.all(color: colors.outlineVariant),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: [
              for (var index = 0; index < plan.batches.length; index++) ...[
                _BatchRow(index: index, batch: plan.batches[index]),
                if (index != plan.batches.length - 1) const Divider(height: 1),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _BatchRow extends StatelessWidget {
  const _BatchRow({required this.index, required this.batch});

  final int index;
  final BatchRange batch;

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    return Padding(
      key: ValueKey('batch-${index + 1}'),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              shape: BoxShape.circle,
            ),
            child: Text(
              '${index + 1}',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              strings.batchRow(
                index + 1,
                batch.start.toString(),
                batch.end.toString(),
                batch.itemCount,
              ),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontFeatures: const [FontFeature.tabularFigures()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    final appearanceAction = AppAppearanceMenu(
      selectedStyle: designStyle,
      onSelected: onDesignStyleChanged,
      tooltip: strings.appearanceMenuTooltip,
      materialLabel: strings.appearanceMaterial,
      flatLabel: strings.appearanceFlat,
      softLabel: strings.appearanceSoft,
    );
    final privacyAction = TextButton.icon(
      onPressed: () {
        unawaited(
          launchUrl(
            Uri.parse(privacyPolicyUrl),
            mode: LaunchMode.externalApplication,
          ),
        );
      },
      icon: const Icon(Icons.privacy_tip_outlined, size: 18),
      label: Text(strings.privacyPolicy, overflow: TextOverflow.ellipsis),
    );
    final flexiblePrivacyAction = Flexible(child: privacyAction);
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: isRtl
              ? [
                  flexiblePrivacyAction,
                  const SizedBox(width: 4),
                  appearanceAction,
                ]
              : [
                  appearanceAction,
                  const SizedBox(width: 4),
                  flexiblePrivacyAction,
                ],
        ),
      ),
    );
  }
}
