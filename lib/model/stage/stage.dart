// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'stage.freezed.dart';
part 'stage.g.dart';

@freezed
class Stage with _$Stage {
  const factory Stage({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'Name') required String name,
  }) = _Stage;
  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}
