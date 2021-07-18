import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'agent_widget.dart';
import 'form_widget/ability/ability.dart';
import 'form_widget/agent/agent.dart';
import 'form_widget/map/map.dart';
import 'form_widget/side/side.dart';
import 'model/ability/ability.dart';
import 'model/search_param/search_param.dart';
import 'single_sliver_list.dart';
import 'tips_view.dart';

final selectedAbilities = Provider<List<Ability>?>((ref) {
  final agentId = ref.watch(agentIdNotifier).state;
  if (agentId == null) return null;
  final agents = ref.watch(agentFuture);
  return agents.when(
    data: (agents) =>
        agents.firstWhere((agent) => agent.id == agentId).abilities,
    loading: () => null,
    error: (err, stack) => null,
  );
});

final agentIdNotifier = StateProvider<int?>((ref) => null);
final abilityIdNotifier = StateProvider<int?>((ref) => null);
final mapIdNotifier = StateProvider<int?>((ref) => null);
final sideIdNotifier = StateProvider<int?>((ref) => null);

class SearchForm extends ConsumerWidget {
  const SearchForm();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        ProviderScope(
          overrides: [currentTitle.overrideWithValue('エージェント')],
          child: const ListTitle(),
        ),
        ProviderScope(
          overrides: [
            providedAgentFormNotifier.overrideWithValue(agentIdNotifier)
          ],
          child: const AgentFormWidget(),
        ),
        ProviderScope(
          overrides: [currentTitle.overrideWithValue('アビリティ')],
          child: const ListTitle(),
        ),
        ProviderScope(
          overrides: [
            providedAbilities.overrideWithValue(ref.watch(selectedAbilities)),
            providedAbilityFormNotifier.overrideWithValue(abilityIdNotifier),
          ],
          child: const AbilityFormWidget(),
        ),
        ProviderScope(
          overrides: [currentTitle.overrideWithValue('マップ')],
          child: const ListTitle(),
        ),
        ProviderScope(
          overrides: [providedMapFormNotifier.overrideWithValue(mapIdNotifier)],
          child: const MapFormWidget(),
        ),
        ProviderScope(
          overrides: [currentTitle.overrideWithValue('攻守')],
          child: const ListTitle(),
        ),
        ProviderScope(
          overrides: [
            providedSideFormNotifier.overrideWithValue(sideIdNotifier)
          ],
          child: const SideFormWidget(),
        ),
        ProviderScope(
          overrides: [
            listItem.overrideWithValue(
              TextButton(
                onPressed: () {
                  final abilityId = ref.read(abilityIdNotifier).state;
                  final mapId = ref.read(mapIdNotifier).state;
                  final sideId = ref.read(sideIdNotifier).state;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProviderScope(
                        overrides: [
                          searchParam.overrideWithValue(
                            SearchParam(
                              abilityId: abilityId,
                              mapId: mapId,
                              sideId: sideId,
                            ),
                          )
                        ],
                        child: const TipsView(),
                      ),
                    ),
                  );
                },
                child: const Text('検索'),
              ),
            ),
          ],
          child: const SingleSliverList(),
        ),
      ],
    );
  }
}

final currentTitle = Provider<String>((_) => throw UnimplementedError());

class ListTitle extends ConsumerWidget {
  const ListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(currentTitle);

    return ProviderScope(overrides: [
      listItem.overrideWithValue(
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ], child: const SingleSliverList());
  }
}
