// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionModel _$SessionModelFromJson(Map<String, dynamic> json) {
  return _SessionModel.fromJson(json);
}

/// @nodoc
mixin _$SessionModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get visions => throw _privateConstructorUsedError;
  List<UnitModel> get units => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionModelCopyWith<SessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionModelCopyWith<$Res> {
  factory $SessionModelCopyWith(
          SessionModel value, $Res Function(SessionModel) then) =
      _$SessionModelCopyWithImpl<$Res, SessionModel>;
  @useResult
  $Res call({int id, String name, List<String> visions, List<UnitModel> units});
}

/// @nodoc
class _$SessionModelCopyWithImpl<$Res, $Val extends SessionModel>
    implements $SessionModelCopyWith<$Res> {
  _$SessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? visions = null,
    Object? units = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      visions: null == visions
          ? _value.visions
          : visions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as List<UnitModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionModelCopyWith<$Res>
    implements $SessionModelCopyWith<$Res> {
  factory _$$_SessionModelCopyWith(
          _$_SessionModel value, $Res Function(_$_SessionModel) then) =
      __$$_SessionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<String> visions, List<UnitModel> units});
}

/// @nodoc
class __$$_SessionModelCopyWithImpl<$Res>
    extends _$SessionModelCopyWithImpl<$Res, _$_SessionModel>
    implements _$$_SessionModelCopyWith<$Res> {
  __$$_SessionModelCopyWithImpl(
      _$_SessionModel _value, $Res Function(_$_SessionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? visions = null,
    Object? units = null,
  }) {
    return _then(_$_SessionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      visions: null == visions
          ? _value._visions
          : visions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      units: null == units
          ? _value._units
          : units // ignore: cast_nullable_to_non_nullable
              as List<UnitModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionModel implements _SessionModel {
  const _$_SessionModel(
      {required this.id,
      required this.name,
      required final List<String> visions,
      required final List<UnitModel> units})
      : _visions = visions,
        _units = units;

  factory _$_SessionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SessionModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<String> _visions;
  @override
  List<String> get visions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visions);
  }

  final List<UnitModel> _units;
  @override
  List<UnitModel> get units {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_units);
  }

  @override
  String toString() {
    return 'SessionModel(id: $id, name: $name, visions: $visions, units: $units)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._visions, _visions) &&
            const DeepCollectionEquality().equals(other._units, _units));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_visions),
      const DeepCollectionEquality().hash(_units));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionModelCopyWith<_$_SessionModel> get copyWith =>
      __$$_SessionModelCopyWithImpl<_$_SessionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionModelToJson(
      this,
    );
  }
}

abstract class _SessionModel implements SessionModel {
  const factory _SessionModel(
      {required final int id,
      required final String name,
      required final List<String> visions,
      required final List<UnitModel> units}) = _$_SessionModel;

  factory _SessionModel.fromJson(Map<String, dynamic> json) =
      _$_SessionModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String> get visions;
  @override
  List<UnitModel> get units;
  @override
  @JsonKey(ignore: true)
  _$$_SessionModelCopyWith<_$_SessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
