// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchParam _$SearchParamFromJson(Map<String, dynamic> json) {
  return _SearchParam.fromJson(json);
}

/// @nodoc
class _$SearchParamTearOff {
  const _$SearchParamTearOff();

  _SearchParam call(
      {@JsonKey(name: 'ability_id') required int? abilityId,
      @JsonKey(name: 'map_id') required int? mapId,
      @JsonKey(name: 'side_id') required int? sideId}) {
    return _SearchParam(
      abilityId: abilityId,
      mapId: mapId,
      sideId: sideId,
    );
  }

  SearchParam fromJson(Map<String, Object> json) {
    return SearchParam.fromJson(json);
  }
}

/// @nodoc
const $SearchParam = _$SearchParamTearOff();

/// @nodoc
mixin _$SearchParam {
  @JsonKey(name: 'ability_id')
  int? get abilityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_id')
  int? get mapId => throw _privateConstructorUsedError;
  @JsonKey(name: 'side_id')
  int? get sideId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchParamCopyWith<SearchParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParamCopyWith<$Res> {
  factory $SearchParamCopyWith(
          SearchParam value, $Res Function(SearchParam) then) =
      _$SearchParamCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ability_id') int? abilityId,
      @JsonKey(name: 'map_id') int? mapId,
      @JsonKey(name: 'side_id') int? sideId});
}

/// @nodoc
class _$SearchParamCopyWithImpl<$Res> implements $SearchParamCopyWith<$Res> {
  _$SearchParamCopyWithImpl(this._value, this._then);

  final SearchParam _value;
  // ignore: unused_field
  final $Res Function(SearchParam) _then;

  @override
  $Res call({
    Object? abilityId = freezed,
    Object? mapId = freezed,
    Object? sideId = freezed,
  }) {
    return _then(_value.copyWith(
      abilityId: abilityId == freezed
          ? _value.abilityId
          : abilityId // ignore: cast_nullable_to_non_nullable
              as int?,
      mapId: mapId == freezed
          ? _value.mapId
          : mapId // ignore: cast_nullable_to_non_nullable
              as int?,
      sideId: sideId == freezed
          ? _value.sideId
          : sideId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SearchParamCopyWith<$Res>
    implements $SearchParamCopyWith<$Res> {
  factory _$SearchParamCopyWith(
          _SearchParam value, $Res Function(_SearchParam) then) =
      __$SearchParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ability_id') int? abilityId,
      @JsonKey(name: 'map_id') int? mapId,
      @JsonKey(name: 'side_id') int? sideId});
}

/// @nodoc
class __$SearchParamCopyWithImpl<$Res> extends _$SearchParamCopyWithImpl<$Res>
    implements _$SearchParamCopyWith<$Res> {
  __$SearchParamCopyWithImpl(
      _SearchParam _value, $Res Function(_SearchParam) _then)
      : super(_value, (v) => _then(v as _SearchParam));

  @override
  _SearchParam get _value => super._value as _SearchParam;

  @override
  $Res call({
    Object? abilityId = freezed,
    Object? mapId = freezed,
    Object? sideId = freezed,
  }) {
    return _then(_SearchParam(
      abilityId: abilityId == freezed
          ? _value.abilityId
          : abilityId // ignore: cast_nullable_to_non_nullable
              as int?,
      mapId: mapId == freezed
          ? _value.mapId
          : mapId // ignore: cast_nullable_to_non_nullable
              as int?,
      sideId: sideId == freezed
          ? _value.sideId
          : sideId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchParam with DiagnosticableTreeMixin implements _SearchParam {
  const _$_SearchParam(
      {@JsonKey(name: 'ability_id') required this.abilityId,
      @JsonKey(name: 'map_id') required this.mapId,
      @JsonKey(name: 'side_id') required this.sideId});

  factory _$_SearchParam.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchParamFromJson(json);

  @override
  @JsonKey(name: 'ability_id')
  final int? abilityId;
  @override
  @JsonKey(name: 'map_id')
  final int? mapId;
  @override
  @JsonKey(name: 'side_id')
  final int? sideId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchParam(abilityId: $abilityId, mapId: $mapId, sideId: $sideId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchParam'))
      ..add(DiagnosticsProperty('abilityId', abilityId))
      ..add(DiagnosticsProperty('mapId', mapId))
      ..add(DiagnosticsProperty('sideId', sideId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchParam &&
            (identical(other.abilityId, abilityId) ||
                const DeepCollectionEquality()
                    .equals(other.abilityId, abilityId)) &&
            (identical(other.mapId, mapId) ||
                const DeepCollectionEquality().equals(other.mapId, mapId)) &&
            (identical(other.sideId, sideId) ||
                const DeepCollectionEquality().equals(other.sideId, sideId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(abilityId) ^
      const DeepCollectionEquality().hash(mapId) ^
      const DeepCollectionEquality().hash(sideId);

  @JsonKey(ignore: true)
  @override
  _$SearchParamCopyWith<_SearchParam> get copyWith =>
      __$SearchParamCopyWithImpl<_SearchParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchParamToJson(this);
  }
}

abstract class _SearchParam implements SearchParam {
  const factory _SearchParam(
      {@JsonKey(name: 'ability_id') required int? abilityId,
      @JsonKey(name: 'map_id') required int? mapId,
      @JsonKey(name: 'side_id') required int? sideId}) = _$_SearchParam;

  factory _SearchParam.fromJson(Map<String, dynamic> json) =
      _$_SearchParam.fromJson;

  @override
  @JsonKey(name: 'ability_id')
  int? get abilityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'map_id')
  int? get mapId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'side_id')
  int? get sideId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchParamCopyWith<_SearchParam> get copyWith =>
      throw _privateConstructorUsedError;
}
