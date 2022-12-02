import 'package:dartz/dartz.dart';
import 'package:qscondominio/app/core/error/failures.dart';
import 'package:qscondominio/app/core/session/domain/entities/session_entity.dart';

abstract class AuthRepositories {
  Future<Either<Failure, SessionEntity>> makeLogin(
      {String userName, String password});
  Future<Either<Failure, bool>> makeLogout();
}
