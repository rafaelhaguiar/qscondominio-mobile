// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:qscondominio/app/core/session/domain/entities/unit_entity.dart';

abstract class SessionEntity {
  final int id;
  final String name;
  final List<String> visions;
  final List<UnitEntity> units;

  const SessionEntity({
    required this.id,
    required this.name,
    required this.visions,
    required this.units,
  });
}
