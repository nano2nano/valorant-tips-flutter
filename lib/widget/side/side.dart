import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../model/side/side.dart';

final sidesProvider = Provider<List<Side>>((ref) => throw UnimplementedError());

final sideIdNotifierProvider =
    Provider<StateProvider<int?>>((ref) => throw UnimplementedError());

class SideForm extends ConsumerWidget {
  const SideForm({Key? key}) : super(key: key);

  @override
  SliverList build(BuildContext context, WidgetRef ref) {
    final sideIdNotifier = ref.watch(sideIdNotifierProvider);
    final sides = ref.watch(sidesProvider);
    final groupValue = ref.watch(sideIdNotifier).state;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return RadioListTile<int?>(
            title: Text(sides[index].name),
            value: sides[index].id,
            groupValue: groupValue,
            onChanged: (sideId) => ref.read(sideIdNotifier).state = sideId,
          );
        },
        childCount: sides.length,
      ),
    );
  }
}
