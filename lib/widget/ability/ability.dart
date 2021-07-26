import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../model/ability/ability.dart';

final abilitiesProvider =
    Provider<List<Ability>>((ref) => throw UnimplementedError());

final abilityIdNotifierProvider =
    Provider<StateProvider<int?>>((ref) => throw UnimplementedError());

class AbilityForm extends ConsumerWidget {
  const AbilityForm({Key? key}) : super(key: key);

  @override
  SliverList build(BuildContext context, WidgetRef ref) {
    final abilityIdNotifier = ref.watch(abilityIdNotifierProvider);
    final abilities = ref.watch(abilitiesProvider);
    final groupValue = ref.watch(abilityIdNotifier).state;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return RadioListTile<int?>(
            title: Text(abilities[index].name),
            value: abilities[index].id,
            groupValue: groupValue,
            onChanged: (abilityId) =>
                ref.read(abilityIdNotifier).state = abilityId,
          );
        },
        childCount: abilities.length,
      ),
    );
  }
}
