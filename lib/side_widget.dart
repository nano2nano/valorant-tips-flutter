import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'data/repository/side_repository_impl.dart';
import 'model/side/side.dart';

import 'single_sliver_list.dart';

final sideFuture = FutureProvider<List<Side>>((ref) async {
  return ref.watch(sideRepositoryProvider).getSides();
});
final sideIdNotifier = StateProvider<int?>((ref) => null);

class SideWidget extends HookWidget {
  const SideWidget();

  @override
  Widget build(BuildContext context) {
    var sides = useProvider(sideFuture);
    return sides.when(
      data: (sides) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ProviderScope(
              overrides: [currentSide.overrideWithValue(sides[index])],
              child: const SideTile(),
            );
          },
          childCount: sides.length,
        ),
      ),
      loading: () => ProviderScope(
        overrides: [
          listItem.overrideWithValue(
            const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
        child: const SingleSliverList(),
      ),
      error: (err, stack) => ProviderScope(
        overrides: [
          listItem.overrideWithValue(
            Text('Error: $err'),
          ),
        ],
        child: const SingleSliverList(),
      ),
    );
  }
}

final currentSide = ScopedProvider<Side>((_) => throw UnimplementedError());

class SideTile extends HookWidget {
  const SideTile();

  @override
  Widget build(BuildContext context) {
    final side = useProvider(currentSide);
    final groupValue = useProvider(sideIdNotifier).state;

    return RadioListTile<int?>(
      title: Text(side.name),
      value: side.id,
      groupValue: groupValue,
      onChanged: (sideId) => context.read(sideIdNotifier).state = sideId,
    );
  }
}
