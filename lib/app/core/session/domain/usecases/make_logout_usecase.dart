// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:qscondominio/app/core/error/failures.dart';
import 'package:qscondominio/app/core/session/domain/repositories/auth_repository.dart';
import 'package:qscondominio/app/core/usecases/usecase.dart';

class MakeLogoutUsecase extends UseCase<bool, NoParams> {
  final AuthRepository repository;
  MakeLogoutUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return repository.makeLogout();
  }
}
