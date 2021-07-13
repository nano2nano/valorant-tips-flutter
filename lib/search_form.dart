import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'agent_widget.dart';
import 'data/repository/agent_repository_impl.dart';
import 'data/repository/map_repository_impl.dart';
import 'map_widget.dart';
import 'model/agent/agent.dart';
import 'model/stage/stage.dart';
import 'side_widget.dart';
import 'single_sliver_list.dart';

final mapFuture = FutureProvider<List<Stage>>((ref) async {
  return ref.watch(mapRepositoryProvider).getMaps();
});
final mapIdNotifier = StateProvider<String?>((ref) => null);

final agentFuture = FutureProvider<List<Agent>>((ref) async {
  return ref.watch(agentRepositoryProvider).getAgents();
});
final agentIdNotifier = StateProvider<int?>((ref) => null);

class SearchForm extends HookWidget {
  const SearchForm();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ProviderScope(
          overrides: [currentTitle.overrideWithValue('エージェント')],
          child: const ListTitle(),
        ),
        const AgentWidget(),
        ProviderScope(
          overrides: [currentTitle.overrideWithValue('マップ')],
          child: const ListTitle(),
        ),
        const MapWidget(),
        ProviderScope(
          overrides: [currentTitle.overrideWithValue('攻守')],
          child: const ListTitle(),
        ),
        const SideWidget(),
      ],
    );
  }
}

final currentTitle = ScopedProvider<String>((_) => throw UnimplementedError());

class ListTitle extends HookWidget {
  const ListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = useProvider(currentTitle);

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
