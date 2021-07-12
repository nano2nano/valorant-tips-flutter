// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Agent _$_$_AgentFromJson(Map<String, dynamic> json) {
  return _$_Agent(
    id: json['ID'] as int,
    name: json['Name'] as String,
    abilities: (json['Abilities'] as List<dynamic>)
        .map((e) => Ability.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AgentToJson(_$_Agent instance) => <String, dynamic>{
      'ID': instance.id,
      'Name': instance.name,
      'Abilities': instance.abilities,
    };
