import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/stage/stage.dart';

final mapsProvider = Provider<List<Stage>>((ref) => throw UnimplementedError());

final mapIdNotifierProvider =
    Provider<StateProvider<int?>>((ref) => throw UnimplementedError());

class MapForm extends ConsumerWidget {
  const MapForm({Key? key}) : super(key: key);

  @override
  SliverList build(BuildContext context, WidgetRef ref) {
    final mapIdNotifier = ref.watch(mapIdNotifierProvider);
    final maps = ref.watch(mapsProvider);
    final groupValue = ref.watch(mapIdNotifier).state;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return RadioListTile<int?>(
            title: Text(maps[index].name),
            value: maps[index].id,
            groupValue: groupValue,
            onChanged: (mapId) => ref.read(mapIdNotifier).state = mapId,
          );
        },
        childCount: maps.length,
      ),
    );
  }
}
