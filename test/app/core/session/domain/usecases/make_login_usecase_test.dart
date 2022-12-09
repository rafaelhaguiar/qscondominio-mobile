import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:qscondominio/app/core/error/failures.dart';
import 'package:qscondominio/app/core/session/domain/entities/session_entity.dart';
import 'package:qscondominio/app/core/session/domain/repositories/auth_repository.dart';
import 'package:qscondominio/app/core/session/domain/usecases/make_login_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockSessionEntity extends Mock implements SessionEntity {}

void main() {
  late AuthRepository authRepository;
  late SessionEntity sessionEntity;
  late MakeLoginUsecase makeLoginUsecase;
  late MakeLoginParams makeLoginParams;
  setUp(() {
    authRepository = MockAuthRepository();

    sessionEntity = MockSessionEntity();
    makeLoginUsecase = MakeLoginUsecase(repository: authRepository);
    makeLoginParams = MakeLoginParams(
        userName: "rafaelhenriqueggt@gmail.com", password: 'iWantToBelieve');
  });

  test(
      'MakeLoginUsecase - should return a Right and this Right need be an SessionEntity',
      (() async {
    when(() => authRepository.makeLogin(
            userName: "rafaelhenriqueggt@gmail.com",
            password: 'iWantToBelieve'))
        .thenAnswer((_) async => Right(sessionEntity));
    verifyNever(() => makeLoginUsecase(makeLoginParams));
    final result = await makeLoginUsecase(makeLoginParams);
    verify(() => makeLoginUsecase(makeLoginParams)).called(1);
    expect(result, isA<Right>());
    expect(result.fold((l) => l, (r) => r), isA<SessionEntity>());
  }));

  test(
      'MakeLoginUsecase - should return a Left and this Left is an ServerFailure',
      (() async {
    when(() => authRepository.makeLogin(
            userName: "rafaelhenriqueggt@gmail.com",
            password: 'iWantToBelieve'))
        .thenAnswer((_) async => Left(ServerFailure()));
    verifyNever(() => makeLoginUsecase(makeLoginParams));
    final result = await makeLoginUsecase(makeLoginParams);
    verify(() => makeLoginUsecase(makeLoginParams)).called(1);
    expect(result, isA<Left>());
    expect(result.fold((l) => l, (r) => r), isA<ServerFailure>());
  }));
}
