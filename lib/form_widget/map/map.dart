import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/repository/map_repository_impl.dart';
import '../../model/stage/stage.dart';

final mapsFuture = FutureProvider<List<Stage>>((ref) async {
  return ref.watch(mapRepositoryProvider).getMaps();
});

final providedMapFormNotifier =
    Provider<StateProvider<int?>>((_) => throw UnimplementedError());

class MapFormWidget extends ConsumerWidget {
  const MapFormWidget({Key? key}) : super(key: key);

  @override
  SliverList build(BuildContext context, WidgetRef ref) {
    final maps = ref.watch(mapsFuture);
    return maps.when(
      data: (maps) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ProviderScope(
              overrides: [providedMap.overrideWithValue(maps[index])],
              child: const MapTile(),
            );
          },
          childCount: maps.length,
        ),
      ),
      loading: (_) => SliverList(
        delegate: SliverChildListDelegate(
          [
            const Center(
              child: CircularProgressIndicator(),
            )
          ],
        ),
      ),
      error: (err, stack, _) => SliverList(
        delegate: SliverChildListDelegate([Text('err: $err')]),
      ),
    );
  }
}

final providedMap = Provider<Stage>((_) => throw UnimplementedError());

class MapTile extends ConsumerWidget {
  const MapTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final map = ref.watch(providedMap);
    final notifier = ref.watch(providedMapFormNotifier);
    final groupValue = ref.watch(notifier).state;

    return RadioListTile<int?>(
      title: Text(map.name),
      value: map.id,
      groupValue: groupValue,
      onChanged: (mapId) => ref.read(notifier).state = mapId,
    );
  }
}
