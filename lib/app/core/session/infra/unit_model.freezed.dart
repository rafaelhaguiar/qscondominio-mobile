// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitModel _$UnitModelFromJson(Map<String, dynamic> json) {
  return _UnitModel.fromJson(json);
}

/// @nodoc
mixin _$UnitModel {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitModelCopyWith<UnitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitModelCopyWith<$Res> {
  factory $UnitModelCopyWith(UnitModel value, $Res Function(UnitModel) then) =
      _$UnitModelCopyWithImpl<$Res, UnitModel>;
  @useResult
  $Res call({int id, String description});
}

/// @nodoc
class _$UnitModelCopyWithImpl<$Res, $Val extends UnitModel>
    implements $UnitModelCopyWith<$Res> {
  _$UnitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnitModelCopyWith<$Res> implements $UnitModelCopyWith<$Res> {
  factory _$$_UnitModelCopyWith(
          _$_UnitModel value, $Res Function(_$_UnitModel) then) =
      __$$_UnitModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String description});
}

/// @nodoc
class __$$_UnitModelCopyWithImpl<$Res>
    extends _$UnitModelCopyWithImpl<$Res, _$_UnitModel>
    implements _$$_UnitModelCopyWith<$Res> {
  __$$_UnitModelCopyWithImpl(
      _$_UnitModel _value, $Res Function(_$_UnitModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_$_UnitModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnitModel implements _UnitModel {
  const _$_UnitModel({required this.id, required this.description});

  factory _$_UnitModel.fromJson(Map<String, dynamic> json) =>
      _$$_UnitModelFromJson(json);

  @override
  final int id;
  @override
  final String description;

  @override
  String toString() {
    return 'UnitModel(id: $id, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitModelCopyWith<_$_UnitModel> get copyWith =>
      __$$_UnitModelCopyWithImpl<_$_UnitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitModelToJson(
      this,
    );
  }
}

abstract class _UnitModel implements UnitModel {
  const factory _UnitModel(
      {required final int id,
      required final String description}) = _$_UnitModel;

  factory _UnitModel.fromJson(Map<String, dynamic> json) =
      _$_UnitModel.fromJson;

  @override
  int get id;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_UnitModelCopyWith<_$_UnitModel> get copyWith =>
      throw _privateConstructorUsedError;
}
