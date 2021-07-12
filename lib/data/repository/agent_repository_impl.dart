import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/agent/agent.dart';
import '../remote/agent/agent.dart';
import '../remote/agent/agent_impl.dart';
import 'agent_repository.dart';

final agentRepositoryProvider = Provider((ref) =>
    AgentRepositoryImpl(dataSource: ref.read(agentDataSourceProvider)));

class AgentRepositoryImpl implements AgentRepository {
  AgentRepositoryImpl({required AgentDataSource dataSource})
      : _dataSource = dataSource;

  final AgentDataSource _dataSource;

  @override
  Future<List<Agent>> getAgents() async {
    return _dataSource.getAgents();
  }
}
