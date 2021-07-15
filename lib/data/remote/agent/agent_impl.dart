import 'dart:convert' as convert;

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../../model/agent/agent.dart';
import 'agent.dart';

final agentDataSourceProvider =
    Provider<AgentDataSource>((ref) => AgentDataSourceImpl());

class AgentDataSourceImpl implements AgentDataSource {
  @override
  Future<List<Agent>> getAgents() async {
    var url = Uri.https(
        "valorant-tips.herokuapp.com", '/api/v1/agent', {'q': 'http'});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.json.decode(response.body) as List<dynamic>;
      var agents = jsonResponse.map((i) => Agent.fromJson(i)).toList();
      return agents;
    } else {
      throw Exception('Failed');
    }
  }
}
