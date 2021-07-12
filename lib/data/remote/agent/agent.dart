import '../../../model/agent/agent.dart';

mixin AgentDataSource {
  Future<List<Agent>> getAgents();
}
