import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tip.freezed.dart';
part 'tip.g.dart';

@freezed
class Tip with _$Tip {
  const factory Tip({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'StandingPosition') required String standPosName,
    @JsonKey(name: 'AimPosition') required String aimPosName,
    @JsonKey(name: 'IconName') String? iconName,
    @JsonKey(name: 'Description') required String description,
    @JsonKey(name: 'SideID') required int sideId,
    @JsonKey(name: 'MapID') required int mapId,
    @JsonKey(name: 'TipID') required int tipId,
    @JsonKey(name: 'Good', defaultValue: 0) @Default(0) int good,
    @JsonKey(name: 'Bad', defaultValue: 0) @Default(0) int bad,
  }) = _Tip;
  factory Tip.fromJson(Map<String, dynamic> json) => _$TipFromJson(json);
}
