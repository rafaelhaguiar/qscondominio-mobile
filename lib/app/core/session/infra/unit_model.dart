import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qscondominio/app/core/session/domain/entities/unit_entity.dart';

part 'unit_model.freezed.dart';
part 'unit_model.g.dart';

@freezed
class UnitModel extends UnitEntity with _$UnitModel {
  const factory UnitModel({
    required int id,
    required String description,
  }) = _UnitModel;

  factory UnitModel.fromJson(Map<String, dynamic> json) =>
      _$UnitModelFromJson(json);
}
