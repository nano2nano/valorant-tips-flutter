import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'data/repository/agent_repository_impl.dart';
import 'model/agent/agent.dart';

final agentFuture = FutureProvider<List<Agent>>((ref) async {
  return ref.watch(agentRepositoryProvider).getAgents();
});
final agentIdNotifier = StateProvider<int?>((ref) => null);

class AgentWidget extends ConsumerWidget {
  const AgentWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentFuture);

    return agents.when(
      data: (agents) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ProviderScope(
              overrides: [currentAgent.overrideWithValue(agents[index])],
              child: const AgentTitle(),
            );
          },
          childCount: agents.length,
        ),
      ),
      loading: () => SliverList(
        delegate: SliverChildListDelegate(
          [const Center(child: CircularProgressIndicator())],
        ),
      ),
      error: (err, stack) => SliverList(
        delegate: SliverChildListDelegate(
          [Text('Error: $err')],
        ),
      ),
    );
  }
}

final currentAgent = Provider<Agent>((_) => throw UnimplementedError());

class AgentTitle extends ConsumerWidget {
  const AgentTitle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agent = ref.watch(currentAgent);
    final groupValue = ref.watch(agentIdNotifier).state;

    return RadioListTile<int?>(
      title: Text(agent.name),
      value: agent.id,
      groupValue: groupValue,
      onChanged: (agentId) => ref.read(agentIdNotifier).state = agentId,
    );
  }
}

class LoadingSliverList extends StatelessWidget {
  const LoadingSliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        childCount: 1,
      ),
    );
  }
}
