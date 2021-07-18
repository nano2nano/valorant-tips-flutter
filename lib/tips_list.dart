import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'image_widget.dart';
import 'model/tip/tip.dart';

final providedTips = Provider<List<Tip>>((_) => throw UnimplementedError());

class TipsList extends ConsumerWidget {
  const TipsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tips = ref.watch(providedTips);
    return ListView.builder(
      itemBuilder: (context, index) => ProviderScope(
        overrides: [providedTip.overrideWithValue(tips[index])],
        child: const TipWidget(),
      ),
      itemCount: tips.length,
    );
  }
}

final providedTip = Provider<Tip>((_) => throw UnimplementedError());

class TipWidget extends ConsumerWidget {
  const TipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tip = ref.watch(providedTip);
    return ExpandableNotifier(
      child: ScrollOnExpand(
        child: ExpandablePanel(
          header: Text(
            tip.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          collapsed: const Text(''),
          expanded: Column(
            children: [
              const Text('立ち位置'),
              ProviderScope(
                overrides: [imageName.overrideWithValue(tip.standPosName)],
                child: const ImageWidget(),
              ),
              const Text('狙う位置'),
              ProviderScope(
                overrides: [imageName.overrideWithValue(tip.aimPosName)],
                child: const ImageWidget(),
              ),
              Text(tip.description),
            ],
          ),
        ),
      ),
    );
  }
}
