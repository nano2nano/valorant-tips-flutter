import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/repository/agent_repository_impl.dart';
import '../../model/agent/agent.dart';

final agentsFuture = FutureProvider<List<Agent>>((ref) async {
  return ref.watch(agentRepositoryProvider).getAgents();
});

final providedAgentFormNotifier =
    Provider<StateProvider<int?>>((_) => throw UnimplementedError());

class AgentFormWidget extends ConsumerWidget {
  const AgentFormWidget({Key? key}) : super(key: key);

  @override
  SliverList build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentsFuture);
    return agents.when(
      data: (agents) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ProviderScope(
              overrides: [providedAgent.overrideWithValue(agents[index])],
              child: const AgentFormTile(),
            );
          },
          childCount: agents.length,
        ),
      ),
      loading: () => SliverList(
        delegate: SliverChildListDelegate(
          [
            const Center(
              child: CircularProgressIndicator(),
            )
          ],
        ),
      ),
      error: (err, stack) => SliverList(
        delegate: SliverChildListDelegate([Text('err: $err')]),
      ),
    );
  }
}

final providedAgent = Provider<Agent>((_) => throw UnimplementedError());

class AgentFormTile extends ConsumerWidget {
  const AgentFormTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final side = ref.watch(providedAgent);
    final notifier = ref.watch(providedAgentFormNotifier);
    final groupValue = ref.watch(notifier).state;

    return RadioListTile<int?>(
      title: Text(side.name),
      value: side.id,
      groupValue: groupValue,
      onChanged: (sideId) => ref.read(notifier).state = sideId,
    );
  }
}
