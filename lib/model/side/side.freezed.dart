// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'side.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Side _$SideFromJson(Map<String, dynamic> json) {
  return _Side.fromJson(json);
}

/// @nodoc
class _$SideTearOff {
  const _$SideTearOff();

  _Side call(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Name') required String name}) {
    return _Side(
      id: id,
      name: name,
    );
  }

  Side fromJson(Map<String, Object> json) {
    return Side.fromJson(json);
  }
}

/// @nodoc
const $Side = _$SideTearOff();

/// @nodoc
mixin _$Side {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideCopyWith<Side> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideCopyWith<$Res> {
  factory $SideCopyWith(Side value, $Res Function(Side) then) =
      _$SideCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'ID') int id, @JsonKey(name: 'Name') String name});
}

/// @nodoc
class _$SideCopyWithImpl<$Res> implements $SideCopyWith<$Res> {
  _$SideCopyWithImpl(this._value, this._then);

  final Side _value;
  // ignore: unused_field
  final $Res Function(Side) _then;

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
abstract class _$SideCopyWith<$Res> implements $SideCopyWith<$Res> {
  factory _$SideCopyWith(_Side value, $Res Function(_Side) then) =
      __$SideCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'ID') int id, @JsonKey(name: 'Name') String name});
}

/// @nodoc
class __$SideCopyWithImpl<$Res> extends _$SideCopyWithImpl<$Res>
    implements _$SideCopyWith<$Res> {
  __$SideCopyWithImpl(_Side _value, $Res Function(_Side) _then)
      : super(_value, (v) => _then(v as _Side));

  @override
  _Side get _value => super._value as _Side;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Side(
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
class _$_Side with DiagnosticableTreeMixin implements _Side {
  const _$_Side(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'Name') required this.name});

  factory _$_Side.fromJson(Map<String, dynamic> json) =>
      _$_$_SideFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'Name')
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Side(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Side'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Side &&
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
  _$SideCopyWith<_Side> get copyWith =>
      __$SideCopyWithImpl<_Side>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SideToJson(this);
  }
}

abstract class _Side implements Side {
  const factory _Side(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Name') required String name}) = _$_Side;

  factory _Side.fromJson(Map<String, dynamic> json) = _$_Side.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SideCopyWith<_Side> get copyWith => throw _privateConstructorUsedError;
}
