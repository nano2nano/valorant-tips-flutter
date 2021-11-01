import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/repository/side_repository_impl.dart';
import '../../model/side/side.dart';

final sidesFuture = FutureProvider<List<Side>>((ref) async {
  return ref.watch(sideRepositoryProvider).getSides();
});

final providedSideFormNotifier =
    Provider<StateProvider<int?>>((_) => throw UnimplementedError());

class SideFormWidget extends ConsumerWidget {
  const SideFormWidget({Key? key}) : super(key: key);

  @override
  SliverList build(BuildContext context, WidgetRef ref) {
    final sides = ref.watch(sidesFuture);
    return sides.when(
      data: (sides) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ProviderScope(
              overrides: [providedSide.overrideWithValue(sides[index])],
              child: const SideTile(),
            );
          },
          childCount: sides.length,
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

final providedSide = Provider<Side>((_) => throw UnimplementedError());

class SideTile extends ConsumerWidget {
  const SideTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final side = ref.watch(providedSide);
    final notifier = ref.watch(providedSideFormNotifier);
    final groupValue = ref.watch(notifier).state;

    return RadioListTile<int?>(
      title: Text(side.name),
      value: side.id,
      groupValue: groupValue,
      onChanged: (sideId) => ref.read(notifier).state = sideId,
    );
  }
}
