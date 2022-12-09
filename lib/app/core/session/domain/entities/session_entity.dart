// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:qscondominio/app/core/session/domain/entities/unit_entity.dart';

enum Visions { condominiumManager, condo, residentMaster, residentDependent }

abstract class SessionEntity extends Equatable {
  final int id;
  final String name;
  final List<Visions> visions;
  final List<UnitEntity> units;

  const SessionEntity({
    required this.id,
    required this.name,
    required this.visions,
    required this.units,
  });
}
