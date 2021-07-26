import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../model/search_param/search_param.dart';

import '../../tips_view.dart';
import '../../widget/ability/ability.dart';
import '../../widget/agent/agent.dart';
import '../../widget/map/map.dart';
import '../../widget/side/side.dart';
import '../drawer/drawer.dart';
import 'search_tip_model.dart';

final selectedAgentIdStateProvider = StateProvider<int?>((ref) {
  return null;
});

final selectedAbilityIdStateProvider = StateProvider<int?>((ref) {
  return null;
});

final selectedMapIdStateProvider = StateProvider<int?>((ref) {
  return null;
});

final selectedSideIdStateProvider = StateProvider<int?>((ref) {
  return null;
});

class SearchTip extends HookConsumerWidget {
  const SearchTip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(searchTipProvider).fetch();
    }, const []);

    if (!ref.watch(searchTipProvider).isLoaded) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final agents = ref.watch(searchTipProvider).agents!;
    final maps = ref.watch(searchTipProvider).maps!;
    final sides = ref.watch(searchTipProvider).sides!;

    final agentId = ref.watch(selectedAgentIdStateProvider).state;
    final abilities = ref.watch(searchTipProvider).getAbilities(agentId);

    return Scaffold(
      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: [
          const TitleWidget('エージェント'),
          ProviderScope(
            overrides: [
              agentsProvider.overrideWithValue(agents),
              agentIdNotifierProvider
                  .overrideWithValue(selectedAgentIdStateProvider),
            ],
            child: const AgentForm(),
          ),
          const TitleWidget('アビリティ'),
          abilities == null
              ? SliverList(
                  delegate:
                      SliverChildListDelegate([const Text('エージェントを選択してください')]),
                )
              : ProviderScope(
                  overrides: [
                    abilitiesProvider.overrideWithValue(abilities),
                    abilityIdNotifierProvider
                        .overrideWithValue(selectedAbilityIdStateProvider),
                  ],
                  child: const AbilityForm(),
                ),
          const TitleWidget('マップ'),
          ProviderScope(
            overrides: [
              mapsProvider.overrideWithValue(maps),
              mapIdNotifierProvider
                  .overrideWithValue(selectedMapIdStateProvider),
            ],
            child: const MapForm(),
          ),
          const TitleWidget('攻守'),
          ProviderScope(
            overrides: [
              sidesProvider.overrideWithValue(sides),
              sideIdNotifierProvider
                  .overrideWithValue(selectedSideIdStateProvider),
            ],
            child: const SideForm(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [const SearchButton()],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchButton extends ConsumerWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        final abilityId = ref.read(selectedAbilityIdStateProvider).state;
        final mapId = ref.read(selectedMapIdStateProvider).state;
        final sideId = ref.read(selectedSideIdStateProvider).state;
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
      child: const Text(
        '検索',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      style: ElevatedButton.styleFrom(minimumSize: const Size(88, 50)),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget(this.data, {Key? key}) : super(key: key);

  final String data;
  @override
  SliverList build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Text(
            data,
            style: const TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({Key? key, required this.error}) : super(key: key);

  final Object error;
  @override
  SliverList build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Text('Error: $error'),
        ],
      ),
    );
  }
}
