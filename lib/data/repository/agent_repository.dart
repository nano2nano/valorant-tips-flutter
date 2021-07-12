import '../../model/agent/agent.dart';

mixin AgentRepository {
  Future<List<Agent>> getAgents();
}
