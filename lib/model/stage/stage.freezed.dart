// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stage _$StageFromJson(Map<String, dynamic> json) {
  return _Stage.fromJson(json);
}

/// @nodoc
class _$StageTearOff {
  const _$StageTearOff();

  _Stage call(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Name') required String name}) {
    return _Stage(
      id: id,
      name: name,
    );
  }

  Stage fromJson(Map<String, Object> json) {
    return Stage.fromJson(json);
  }
}

/// @nodoc
const $Stage = _$StageTearOff();

/// @nodoc
mixin _$Stage {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageCopyWith<Stage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageCopyWith<$Res> {
  factory $StageCopyWith(Stage value, $Res Function(Stage) then) =
      _$StageCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'ID') int id, @JsonKey(name: 'Name') String name});
}

/// @nodoc
class _$StageCopyWithImpl<$Res> implements $StageCopyWith<$Res> {
  _$StageCopyWithImpl(this._value, this._then);

  final Stage _value;
  // ignore: unused_field
  final $Res Function(Stage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StageCopyWith<$Res> implements $StageCopyWith<$Res> {
  factory _$StageCopyWith(_Stage value, $Res Function(_Stage) then) =
      __$StageCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'ID') int id, @JsonKey(name: 'Name') String name});
}

/// @nodoc
class __$StageCopyWithImpl<$Res> extends _$StageCopyWithImpl<$Res>
    implements _$StageCopyWith<$Res> {
  __$StageCopyWithImpl(_Stage _value, $Res Function(_Stage) _then)
      : super(_value, (v) => _then(v as _Stage));

  @override
  _Stage get _value => super._value as _Stage;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Stage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stage with DiagnosticableTreeMixin implements _Stage {
  const _$_Stage(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'Name') required this.name});

  factory _$_Stage.fromJson(Map<String, dynamic> json) =>
      _$_$_StageFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'Name')
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stage(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$StageCopyWith<_Stage> get copyWith =>
      __$StageCopyWithImpl<_Stage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StageToJson(this);
  }
}

abstract class _Stage implements Stage {
  const factory _Stage(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Name') required String name}) = _$_Stage;

  factory _Stage.fromJson(Map<String, dynamic> json) = _$_Stage.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StageCopyWith<_Stage> get copyWith => throw _privateConstructorUsedError;
}
