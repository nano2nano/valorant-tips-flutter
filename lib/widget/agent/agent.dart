import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../model/agent/agent.dart';

final agentsProvider =
    Provider<List<Agent>>((ref) => throw UnimplementedError());

final agentIdNotifierProvider =
    Provider<StateProvider<int?>>((ref) => throw UnimplementedError());

class AgentForm extends ConsumerWidget {
  const AgentForm({Key? key}) : super(key: key);

  @override
  SliverList build(BuildContext context, WidgetRef ref) {
    final agentIdNotifier = ref.watch(agentIdNotifierProvider);
    final agents = ref.watch(agentsProvider);
    final groupValue = ref.watch(agentIdNotifier);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return RadioListTile<int?>(
            title: Text(agents[index].name),
            value: agents[index].id,
            groupValue: groupValue,
            onChanged: (agentId) =>
                ref.read(agentIdNotifier.state).state = agentId,
          );
        },
        childCount: agents.length,
      ),
    );
  }
}
