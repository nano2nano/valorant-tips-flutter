import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/provider/constant.dart';

import '../../model/stage/stage.dart';

final mapsProvider = Provider<List<Stage>>((ref) => throw UnimplementedError());

final mapIdNotifierProvider =
    Provider<StateProvider<String?>>((ref) => throw UnimplementedError());

class MapForm extends ConsumerWidget {
  const MapForm({Key? key}) : super(key: key);

  @override
  SliverList build(BuildContext context, WidgetRef ref) {
    final mapIdNotifier = ref.watch(mapIdNotifierProvider);
    final maps = ref.watch(mapsProvider);
    final groupValue = ref.watch(mapIdNotifier);
    maps.removeWhere((item) => item.uuid == ref.watch(rangeUUIDProvider));
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return RadioListTile<String?>(
            title: Stack(
              children: [
                Image(image: NetworkImage(maps[index].listViewIcon)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                  ),
                  child: Text(maps[index].displayName),
                )
              ],
            ),
            value: maps[index].uuid,
            groupValue: groupValue,
            onChanged: (mapId) => ref.read(mapIdNotifier.state).state = mapId,
          );
        },
        childCount: maps.length,
      ),
    );
  }
}
