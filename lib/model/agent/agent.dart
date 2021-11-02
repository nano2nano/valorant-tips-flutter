import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ability/ability.dart';

part 'agent.freezed.dart';
part 'agent.g.dart';

@freezed
class Agent with _$Agent {
  const factory Agent({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Abilities') required List<Ability> abilities,
  }) = _Agent;
  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);
}
