// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Agent _$AgentFromJson(Map<String, dynamic> json) {
  return _Agent.fromJson(json);
}

/// @nodoc
class _$AgentTearOff {
  const _$AgentTearOff();

  _Agent call(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Name') required String name,
      @JsonKey(name: 'Abilities') required List<Ability> abilities}) {
    return _Agent(
      id: id,
      name: name,
      abilities: abilities,
    );
  }

  Agent fromJson(Map<String, Object> json) {
    return Agent.fromJson(json);
  }
}

/// @nodoc
const $Agent = _$AgentTearOff();

/// @nodoc
mixin _$Agent {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Abilities')
  List<Ability> get abilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentCopyWith<Agent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentCopyWith<$Res> {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) then) =
      _$AgentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Abilities') List<Ability> abilities});
}

/// @nodoc
class _$AgentCopyWithImpl<$Res> implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._value, this._then);

  final Agent _value;
  // ignore: unused_field
  final $Res Function(Agent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? abilities = freezed,
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
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
    ));
  }
}

/// @nodoc
abstract class _$AgentCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$AgentCopyWith(_Agent value, $Res Function(_Agent) then) =
      __$AgentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Abilities') List<Ability> abilities});
}

/// @nodoc
class __$AgentCopyWithImpl<$Res> extends _$AgentCopyWithImpl<$Res>
    implements _$AgentCopyWith<$Res> {
  __$AgentCopyWithImpl(_Agent _value, $Res Function(_Agent) _then)
      : super(_value, (v) => _then(v as _Agent));

  @override
  _Agent get _value => super._value as _Agent;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? abilities = freezed,
  }) {
    return _then(_Agent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Agent with DiagnosticableTreeMixin implements _Agent {
  const _$_Agent(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'Name') required this.name,
      @JsonKey(name: 'Abilities') required this.abilities});

  factory _$_Agent.fromJson(Map<String, dynamic> json) =>
      _$_$_AgentFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'Name')
  final String name;
  @override
  @JsonKey(name: 'Abilities')
  final List<Ability> abilities;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Agent(id: $id, name: $name, abilities: $abilities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Agent'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('abilities', abilities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Agent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.abilities, abilities) ||
                const DeepCollectionEquality()
                    .equals(other.abilities, abilities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(abilities);

  @JsonKey(ignore: true)
  @override
  _$AgentCopyWith<_Agent> get copyWith =>
      __$AgentCopyWithImpl<_Agent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AgentToJson(this);
  }
}

abstract class _Agent implements Agent {
  const factory _Agent(
      {@JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'Name') required String name,
      @JsonKey(name: 'Abilities') required List<Ability> abilities}) = _$_Agent;

  factory _Agent.fromJson(Map<String, dynamic> json) = _$_Agent.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Abilities')
  List<Ability> get abilities => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AgentCopyWith<_Agent> get copyWith => throw _privateConstructorUsedError;
}
