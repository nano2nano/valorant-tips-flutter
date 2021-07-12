// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ability _$_$_AbilityFromJson(Map<String, dynamic> json) {
  return _$_Ability(
    id: json['ID'] as int,
    name: json['Name'] as String,
    iconName: json['IconName'] as String?,
    description: json['Description'] as String,
    agentId: json['AgentID'] as int,
  );
}

Map<String, dynamic> _$_$_AbilityToJson(_$_Ability instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Name': instance.name,
      'IconName': instance.iconName,
      'Description': instance.description,
      'AgentID': instance.agentId,
    };
