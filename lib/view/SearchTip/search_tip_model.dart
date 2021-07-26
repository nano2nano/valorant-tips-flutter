import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repository/agent_repository_impl.dart';
import '../../data/repository/map_repository_impl.dart';
import '../../data/repository/side_repository_impl.dart';
import '../../model/ability/ability.dart';
import '../../model/agent/agent.dart';
import '../../model/side/side.dart';
import '../../model/stage/stage.dart';

final searchTipProvider =
    ChangeNotifierProvider((ref) => SearchTipModel(ref.read));

class SearchTipModel extends ChangeNotifier {
  SearchTipModel(this.read);

  final Reader read;
  List<Agent>? agents;
  List<Stage>? maps;
  List<Side>? sides;

  bool get isLoaded => agents != null && maps != null && sides != null;

  void fetch() async {
    agents = await read(agentRepositoryProvider).getAgents();
    maps = await read(mapRepositoryProvider).getMaps();
    sides = await read(sideRepositoryProvider).getSides();
    notifyListeners();
  }

  List<Ability>? getAbilities(int? agentId) {
    if (agents == null || agentId == null) return null;
    return agents!.firstWhere((element) => element.id == agentId).abilities;
  }
}
