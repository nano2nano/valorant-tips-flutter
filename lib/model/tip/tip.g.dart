// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tip _$_$_TipFromJson(Map<String, dynamic> json) {
  return _$_Tip(
    id: json['ID'] as int,
    title: json['Title'] as String,
    standPosName: json['StandingPosition'] as String,
    aimPosName: json['AimPosition'] as String,
    iconName: json['IconName'] as String?,
    description: json['Description'] as String,
    sideId: json['SideID'] as int,
    mapId: json['MapID'] as int,
    tipId: json['TipID'] as int,
    good: json['Good'] as int? ?? 0,
    bad: json['Bad'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_TipToJson(_$_Tip instance) => <String, dynamic>{
      'ID': instance.id,
      'Title': instance.title,
      'StandingPosition': instance.standPosName,
      'AimPosition': instance.aimPosName,
      'IconName': instance.iconName,
      'Description': instance.description,
      'SideID': instance.sideId,
      'MapID': instance.mapId,
      'TipID': instance.tipId,
      'Good': instance.good,
      'Bad': instance.bad,
    };
