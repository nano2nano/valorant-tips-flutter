import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability.freezed.dart';
part 'ability.g.dart';

@freezed
class Ability with _$Ability {
  const factory Ability({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'IconName') String? iconName,
    @JsonKey(name: 'Description') required String description,
    @JsonKey(name: 'AgentID') required int agentId,
  }) = _Ability;
  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}
