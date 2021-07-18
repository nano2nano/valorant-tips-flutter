import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'model/ability/ability.dart';

final abilityIdNotifier = StateProvider<int?>((ref) => null);

final providedAbilities2 =
    Provider<List<Ability>?>((_) => throw UnimplementedError());

class AbilityWidget extends HookConsumerWidget {
  const AbilityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final abilities = ref.watch(providedAbilities2);
    return SliverList(
      delegate: abilities == null
          ? SliverChildListDelegate([const Text('エージェントを選択してください')])
          : SliverChildBuilderDelegate(
              (context, index) {
                return ProviderScope(
                  overrides: [
                    currentAbility.overrideWithValue(abilities[index])
                  ],
                  child: const AbilityTitle(),
                );
              },
              childCount: abilities.length,
            ),
    );
  }
}

final currentAbility = Provider<Ability>((_) => throw UnimplementedError());

class AbilityTitle extends HookConsumerWidget {
  const AbilityTitle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final map = ref.watch(currentAbility);
    final groupValue = ref.watch(abilityIdNotifier).state;

    return RadioListTile<int?>(
      title: Text(map.name),
      value: map.id,
      groupValue: groupValue,
      onChanged: (abilityId) => ref.read(abilityIdNotifier).state = abilityId,
    );
  }
}
