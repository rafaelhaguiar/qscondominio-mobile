// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:qscondominio/app/core/session/domain/entities/session_entity.dart';
import 'package:qscondominio/app/core/session/infra/unit_model.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
class SessionModel extends SessionEntity with _$SessionModel {
  const factory SessionModel({
    required int id,
    required String name,
    required List<String> visions,
    required List<UnitModel> units,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);
}
