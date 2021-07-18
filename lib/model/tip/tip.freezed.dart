// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tip _$TipFromJson(Map<String, dynamic> json) {
  return _Tip.fromJson(json);
}

/// @nodoc
class _$TipTearOff {
  const _$TipTearOff();

  _Tip call(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Title') required String title,
      @JsonKey(name: 'StandingPosition') required String standPosName,
      @JsonKey(name: 'AimPosition') required String aimPosName,
      @JsonKey(name: 'IconName') String? iconName,
      @JsonKey(name: 'Description') required String description,
      @JsonKey(name: 'SideID') required int sideId,
      @JsonKey(name: 'MapID') required int mapId,
      @JsonKey(name: 'Good', defaultValue: 0) int good = 0,
      @JsonKey(name: 'Bad', defaultValue: 0) int bad = 0}) {
    return _Tip(
      id: id,
      title: title,
      standPosName: standPosName,
      aimPosName: aimPosName,
      iconName: iconName,
      description: description,
      sideId: sideId,
      mapId: mapId,
      good: good,
      bad: bad,
    );
  }

  Tip fromJson(Map<String, Object> json) {
    return Tip.fromJson(json);
  }
}

/// @nodoc
const $Tip = _$TipTearOff();

/// @nodoc
mixin _$Tip {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'StandingPosition')
  String get standPosName => throw _privateConstructorUsedError;
  @JsonKey(name: 'AimPosition')
  String get aimPosName => throw _privateConstructorUsedError;
  @JsonKey(name: 'IconName')
  String? get iconName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'SideID')
  int get sideId => throw _privateConstructorUsedError;
  @JsonKey(name: 'MapID')
  int get mapId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Good', defaultValue: 0)
  int get good => throw _privateConstructorUsedError;
  @JsonKey(name: 'Bad', defaultValue: 0)
  int get bad => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipCopyWith<Tip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipCopyWith<$Res> {
  factory $TipCopyWith(Tip value, $Res Function(Tip) then) =
      _$TipCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'StandingPosition') String standPosName,
      @JsonKey(name: 'AimPosition') String aimPosName,
      @JsonKey(name: 'IconName') String? iconName,
      @JsonKey(name: 'Description') String description,
      @JsonKey(name: 'SideID') int sideId,
      @JsonKey(name: 'MapID') int mapId,
      @JsonKey(name: 'Good', defaultValue: 0) int good,
      @JsonKey(name: 'Bad', defaultValue: 0) int bad});
}

/// @nodoc
class _$TipCopyWithImpl<$Res> implements $TipCopyWith<$Res> {
  _$TipCopyWithImpl(this._value, this._then);

  final Tip _value;
  // ignore: unused_field
  final $Res Function(Tip) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? standPosName = freezed,
    Object? aimPosName = freezed,
    Object? iconName = freezed,
    Object? description = freezed,
    Object? sideId = freezed,
    Object? mapId = freezed,
    Object? good = freezed,
    Object? bad = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      standPosName: standPosName == freezed
          ? _value.standPosName
          : standPosName // ignore: cast_nullable_to_non_nullable
              as String,
      aimPosName: aimPosName == freezed
          ? _value.aimPosName
          : aimPosName // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: iconName == freezed
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sideId: sideId == freezed
          ? _value.sideId
          : sideId // ignore: cast_nullable_to_non_nullable
              as int,
      mapId: mapId == freezed
          ? _value.mapId
          : mapId // ignore: cast_nullable_to_non_nullable
              as int,
      good: good == freezed
          ? _value.good
          : good // ignore: cast_nullable_to_non_nullable
              as int,
      bad: bad == freezed
          ? _value.bad
          : bad // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TipCopyWith<$Res> implements $TipCopyWith<$Res> {
  factory _$TipCopyWith(_Tip value, $Res Function(_Tip) then) =
      __$TipCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'StandingPosition') String standPosName,
      @JsonKey(name: 'AimPosition') String aimPosName,
      @JsonKey(name: 'IconName') String? iconName,
      @JsonKey(name: 'Description') String description,
      @JsonKey(name: 'SideID') int sideId,
      @JsonKey(name: 'MapID') int mapId,
      @JsonKey(name: 'Good', defaultValue: 0) int good,
      @JsonKey(name: 'Bad', defaultValue: 0) int bad});
}

/// @nodoc
class __$TipCopyWithImpl<$Res> extends _$TipCopyWithImpl<$Res>
    implements _$TipCopyWith<$Res> {
  __$TipCopyWithImpl(_Tip _value, $Res Function(_Tip) _then)
      : super(_value, (v) => _then(v as _Tip));

  @override
  _Tip get _value => super._value as _Tip;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? standPosName = freezed,
    Object? aimPosName = freezed,
    Object? iconName = freezed,
    Object? description = freezed,
    Object? sideId = freezed,
    Object? mapId = freezed,
    Object? good = freezed,
    Object? bad = freezed,
  }) {
    return _then(_Tip(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      standPosName: standPosName == freezed
          ? _value.standPosName
          : standPosName // ignore: cast_nullable_to_non_nullable
              as String,
      aimPosName: aimPosName == freezed
          ? _value.aimPosName
          : aimPosName // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: iconName == freezed
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sideId: sideId == freezed
          ? _value.sideId
          : sideId // ignore: cast_nullable_to_non_nullable
              as int,
      mapId: mapId == freezed
          ? _value.mapId
          : mapId // ignore: cast_nullable_to_non_nullable
              as int,
      good: good == freezed
          ? _value.good
          : good // ignore: cast_nullable_to_non_nullable
              as int,
      bad: bad == freezed
          ? _value.bad
          : bad // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tip with DiagnosticableTreeMixin implements _Tip {
  const _$_Tip(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'Title') required this.title,
      @JsonKey(name: 'StandingPosition') required this.standPosName,
      @JsonKey(name: 'AimPosition') required this.aimPosName,
      @JsonKey(name: 'IconName') this.iconName,
      @JsonKey(name: 'Description') required this.description,
      @JsonKey(name: 'SideID') required this.sideId,
      @JsonKey(name: 'MapID') required this.mapId,
      @JsonKey(name: 'Good', defaultValue: 0) this.good = 0,
      @JsonKey(name: 'Bad', defaultValue: 0) this.bad = 0});

  factory _$_Tip.fromJson(Map<String, dynamic> json) => _$_$_TipFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'StandingPosition')
  final String standPosName;
  @override
  @JsonKey(name: 'AimPosition')
  final String aimPosName;
  @override
  @JsonKey(name: 'IconName')
  final String? iconName;
  @override
  @JsonKey(name: 'Description')
  final String description;
  @override
  @JsonKey(name: 'SideID')
  final int sideId;
  @override
  @JsonKey(name: 'MapID')
  final int mapId;
  @override
  @JsonKey(name: 'Good', defaultValue: 0)
  final int good;
  @override
  @JsonKey(name: 'Bad', defaultValue: 0)
  final int bad;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tip(id: $id, title: $title, standPosName: $standPosName, aimPosName: $aimPosName, iconName: $iconName, description: $description, sideId: $sideId, mapId: $mapId, good: $good, bad: $bad)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tip'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('standPosName', standPosName))
      ..add(DiagnosticsProperty('aimPosName', aimPosName))
      ..add(DiagnosticsProperty('iconName', iconName))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('sideId', sideId))
      ..add(DiagnosticsProperty('mapId', mapId))
      ..add(DiagnosticsProperty('good', good))
      ..add(DiagnosticsProperty('bad', bad));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tip &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.standPosName, standPosName) ||
                const DeepCollectionEquality()
                    .equals(other.standPosName, standPosName)) &&
            (identical(other.aimPosName, aimPosName) ||
                const DeepCollectionEquality()
                    .equals(other.aimPosName, aimPosName)) &&
            (identical(other.iconName, iconName) ||
                const DeepCollectionEquality()
                    .equals(other.iconName, iconName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.sideId, sideId) ||
                const DeepCollectionEquality().equals(other.sideId, sideId)) &&
            (identical(other.mapId, mapId) ||
                const DeepCollectionEquality().equals(other.mapId, mapId)) &&
            (identical(other.good, good) ||
                const DeepCollectionEquality().equals(other.good, good)) &&
            (identical(other.bad, bad) ||
                const DeepCollectionEquality().equals(other.bad, bad)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(standPosName) ^
      const DeepCollectionEquality().hash(aimPosName) ^
      const DeepCollectionEquality().hash(iconName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(sideId) ^
      const DeepCollectionEquality().hash(mapId) ^
      const DeepCollectionEquality().hash(good) ^
      const DeepCollectionEquality().hash(bad);

  @JsonKey(ignore: true)
  @override
  _$TipCopyWith<_Tip> get copyWith =>
      __$TipCopyWithImpl<_Tip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TipToJson(this);
  }
}

abstract class _Tip implements Tip {
  const factory _Tip(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Title') required String title,
      @JsonKey(name: 'StandingPosition') required String standPosName,
      @JsonKey(name: 'AimPosition') required String aimPosName,
      @JsonKey(name: 'IconName') String? iconName,
      @JsonKey(name: 'Description') required String description,
      @JsonKey(name: 'SideID') required int sideId,
      @JsonKey(name: 'MapID') required int mapId,
      @JsonKey(name: 'Good', defaultValue: 0) int good,
      @JsonKey(name: 'Bad', defaultValue: 0) int bad}) = _$_Tip;

  factory _Tip.fromJson(Map<String, dynamic> json) = _$_Tip.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'StandingPosition')
  String get standPosName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'AimPosition')
  String get aimPosName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'IconName')
  String? get iconName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'SideID')
  int get sideId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'MapID')
  int get mapId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Good', defaultValue: 0)
  int get good => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Bad', defaultValue: 0)
  int get bad => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TipCopyWith<_Tip> get copyWith => throw _privateConstructorUsedError;
}
