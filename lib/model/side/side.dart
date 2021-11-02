import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'side.freezed.dart';
part 'side.g.dart';

@freezed
class Side with _$Side {
  const factory Side({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'Name') required String name,
  }) = _Side;
  factory Side.fromJson(Map<String, dynamic> json) => _$SideFromJson(json);
}
