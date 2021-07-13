import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data/repository/map_repository_impl.dart';
import 'model/stage/stage.dart';
import 'single_sliver_list.dart';

final mapFuture = FutureProvider<List<Stage>>((ref) async {
  return ref.watch(mapRepositoryProvider).getMaps();
});
final mapIdNotifier = StateProvider<String?>((ref) => null);

class MapWidget extends HookWidget {
  const MapWidget();

  @override
  Widget build(BuildContext context) {
    var maps = useProvider(mapFuture);
    return maps.when(
      data: (maps) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ProviderScope(
              overrides: [currentMap.overrideWithValue(maps[index])],
              child: const MapTitle(),
            );
          },
          childCount: maps.length,
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

final currentMap = ScopedProvider<Stage>((_) => throw UnimplementedError());

class MapTitle extends HookWidget {
  const MapTitle();

  @override
  Widget build(BuildContext context) {
    final map = useProvider(currentMap);
    final groupValue = useProvider(mapIdNotifier).state;

    return RadioListTile<String?>(
      title: Text(map.name),
      value: map.id,
      groupValue: groupValue,
      onChanged: (mapId) => context.read(mapIdNotifier).state = mapId,
    );
  }
}
