import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'data/repository/agent_repository_impl.dart';
import 'model/agent/agent.dart';

final agentFuture = FutureProvider<List<Agent>>((ref) async {
  return ref.watch(agentRepositoryProvider).getAgents();
});
final agentIdNotifier = StateProvider<int?>((ref) => null);

class AgentWidget extends HookWidget {
  const AgentWidget();

  @override
  Widget build(BuildContext context) {
    final agents = useProvider(agentFuture);

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

final currentAgent = ScopedProvider<Agent>((_) => throw UnimplementedError());

class AgentTitle extends HookWidget {
  const AgentTitle();

  @override
  Widget build(BuildContext context) {
    final agent = useProvider(currentAgent);
    final groupValue = useProvider(agentIdNotifier).state;

    return RadioListTile<int?>(
      title: Text(agent.name),
      value: agent.id,
      groupValue: groupValue,
      onChanged: (agentId) => context.read(agentIdNotifier).state = agentId,
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
