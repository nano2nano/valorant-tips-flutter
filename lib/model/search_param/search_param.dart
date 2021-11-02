import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_param.freezed.dart';
part 'search_param.g.dart';

@freezed
class SearchParam with _$SearchParam {
  const factory SearchParam({
    @JsonKey(name: 'ability_id') required int? abilityId,
    @JsonKey(name: 'map_id') required int? mapId,
    @JsonKey(name: 'side_id') required int? sideId,
  }) = _SearchParam;
  factory SearchParam.fromJson(Map<String, dynamic> json) =>
      _$SearchParamFromJson(json);
}
