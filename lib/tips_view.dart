import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data/repository/tip_repository_impl.dart';
import 'model/search_param/search_param.dart';
import 'model/tip/tip.dart';
import 'tips_list.dart';

final searchParam = Provider<SearchParam>((_) => throw UnimplementedError());

final tipsFuture = FutureProvider.family.autoDispose<List<Tip>, SearchParam>(
  (ref, param) async => ref.watch(tipRepositoryProvider).getTips(param),
);

class TipsView extends ConsumerWidget {
  const TipsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final param = ref.watch(searchParam);
    final tips = ref.watch(tipsFuture(param));
    return Scaffold(
      appBar: AppBar(
        title: const Text("tips"),
      ),
      body: SafeArea(
        child: tips.when(
          data: (tips) {
            return ProviderScope(
              overrides: [providedTips.overrideWithValue(tips)],
              child: const TipsList(),
            );
          },
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (err, stack, _) => Text('err: $err'),
        ),
      ),
    );
  }
}
