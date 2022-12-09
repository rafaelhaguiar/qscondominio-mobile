// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:qscondominio/app/core/error/failures.dart';
import 'package:qscondominio/app/core/session/domain/entities/session_entity.dart';
import 'package:qscondominio/app/core/session/domain/repositories/auth_repository.dart';
import 'package:qscondominio/app/core/usecases/usecase.dart';

class MakeLoginUsecase implements UseCase<SessionEntity, MakeLoginParams> {
  final AuthRepository repository;
  MakeLoginUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, SessionEntity>> call(MakeLoginParams params) {
    return repository.makeLogin(
        userName: params.userName, password: params.password);
  }
}

class MakeLoginParams extends Equatable {
  final String userName;
  final String password;
  const MakeLoginParams({
    required this.userName,
    required this.password,
  });

  @override
  List<Object?> get props => [userName, password];
}
