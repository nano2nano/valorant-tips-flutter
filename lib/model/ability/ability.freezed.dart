// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  return _Ability.fromJson(json);
}

/// @nodoc
class _$AbilityTearOff {
  const _$AbilityTearOff();

  _Ability call(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Name') required String name,
      @JsonKey(name: 'IconName') String? iconName,
      @JsonKey(name: 'Description') required String description,
      @JsonKey(name: 'AgentID') required int agentId}) {
    return _Ability(
      id: id,
      name: name,
      iconName: iconName,
      description: description,
      agentId: agentId,
    );
  }

  Ability fromJson(Map<String, Object> json) {
    return Ability.fromJson(json);
  }
}

/// @nodoc
const $Ability = _$AbilityTearOff();

/// @nodoc
mixin _$Ability {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'IconName')
  String? get iconName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'AgentID')
  int get agentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityCopyWith<Ability> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityCopyWith<$Res> {
  factory $AbilityCopyWith(Ability value, $Res Function(Ability) then) =
      _$AbilityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'IconName') String? iconName,
      @JsonKey(name: 'Description') String description,
      @JsonKey(name: 'AgentID') int agentId});
}

/// @nodoc
class _$AbilityCopyWithImpl<$Res> implements $AbilityCopyWith<$Res> {
  _$AbilityCopyWithImpl(this._value, this._then);

  final Ability _value;
  // ignore: unused_field
  final $Res Function(Ability) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconName = freezed,
    Object? description = freezed,
    Object? agentId = freezed,
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
      iconName: iconName == freezed
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: agentId == freezed
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AbilityCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$AbilityCopyWith(_Ability value, $Res Function(_Ability) then) =
      __$AbilityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'IconName') String? iconName,
      @JsonKey(name: 'Description') String description,
      @JsonKey(name: 'AgentID') int agentId});
}

/// @nodoc
class __$AbilityCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$AbilityCopyWith<$Res> {
  __$AbilityCopyWithImpl(_Ability _value, $Res Function(_Ability) _then)
      : super(_value, (v) => _then(v as _Ability));

  @override
  _Ability get _value => super._value as _Ability;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconName = freezed,
    Object? description = freezed,
    Object? agentId = freezed,
  }) {
    return _then(_Ability(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: iconName == freezed
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: agentId == freezed
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ability with DiagnosticableTreeMixin implements _Ability {
  const _$_Ability(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'Name') required this.name,
      @JsonKey(name: 'IconName') this.iconName,
      @JsonKey(name: 'Description') required this.description,
      @JsonKey(name: 'AgentID') required this.agentId});

  factory _$_Ability.fromJson(Map<String, dynamic> json) =>
      _$_$_AbilityFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'Name')
  final String name;
  @override
  @JsonKey(name: 'IconName')
  final String? iconName;
  @override
  @JsonKey(name: 'Description')
  final String description;
  @override
  @JsonKey(name: 'AgentID')
  final int agentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ability(id: $id, name: $name, iconName: $iconName, description: $description, agentId: $agentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ability'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('iconName', iconName))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('agentId', agentId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ability &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.iconName, iconName) ||
                const DeepCollectionEquality()
                    .equals(other.iconName, iconName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.agentId, agentId) ||
                const DeepCollectionEquality().equals(other.agentId, agentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(iconName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(agentId);

  @JsonKey(ignore: true)
  @override
  _$AbilityCopyWith<_Ability> get copyWith =>
      __$AbilityCopyWithImpl<_Ability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AbilityToJson(this);
  }
}

abstract class _Ability implements Ability {
  const factory _Ability(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Name') required String name,
      @JsonKey(name: 'IconName') String? iconName,
      @JsonKey(name: 'Description') required String description,
      @JsonKey(name: 'AgentID') required int agentId}) = _$_Ability;

  factory _Ability.fromJson(Map<String, dynamic> json) = _$_Ability.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'IconName')
  String? get iconName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'AgentID')
  int get agentId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AbilityCopyWith<_Ability> get copyWith =>
      throw _privateConstructorUsedError;
}
