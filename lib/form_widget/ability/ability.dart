import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../model/ability/ability.dart';

final providedAbilities =
    Provider<List<Ability>?>((_) => throw UnimplementedError());

final providedAbilityFormNotifier =
    Provider<StateProvider<int?>>((_) => throw UnimplementedError());

class AbilityFormWidget extends ConsumerWidget {
  const AbilityFormWidget({Key? key}) : super(key: key);

  @override
  SliverList build(BuildContext context, WidgetRef ref) {
    final abilities = ref.watch(providedAbilities);
    return abilities == null
        ? SliverList(
            delegate: SliverChildListDelegate([const Text('エージェントを選択してください')]),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ProviderScope(
                  overrides: [
                    providedAbility.overrideWithValue(abilities[index])
                  ],
                  child: const AbilityFormTile(),
                );
              },
              childCount: abilities.length,
            ),
          );
  }
}

final providedAbility = Provider<Ability>((_) => throw UnimplementedError());

class AbilityFormTile extends ConsumerWidget {
  const AbilityFormTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final side = ref.watch(providedAbility);
    final notifier = ref.watch(providedAbilityFormNotifier);
    final groupValue = ref.watch(notifier).state;

    return RadioListTile<int?>(
      title: Text(side.name),
      value: side.id,
      groupValue: groupValue,
      onChanged: (sideId) => ref.read(notifier).state = sideId,
    );
  }
}
