// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionModel _$$_SessionModelFromJson(Map<String, dynamic> json) =>
    _$_SessionModel(
      id: json['id'] as int,
      name: json['name'] as String,
      visions:
          (json['visions'] as List<dynamic>).map((e) => e as String).toList(),
      units: (json['units'] as List<dynamic>)
          .map((e) => UnitModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SessionModelToJson(_$_SessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'visions': instance.visions,
      'units': instance.units,
    };
