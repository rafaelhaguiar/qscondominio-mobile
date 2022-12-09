import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:qscondominio/app/core/error/failures.dart';
import 'package:qscondominio/app/core/session/domain/repositories/auth_repository.dart';
import 'package:qscondominio/app/core/session/domain/usecases/make_logout_usecase.dart';
import 'package:qscondominio/app/core/usecases/usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late AuthRepository authRepository;
  late MakeLogoutUsecase makeLogoutUsecase;
  setUp(() {
    authRepository = MockAuthRepository();

    makeLogoutUsecase = MakeLogoutUsecase(repository: authRepository);
  });

  test(
      'MakeLogoutUsecase - should return a Right and this Right need be an bool true',
      (() async {
    when(() => authRepository.makeLogout())
        .thenAnswer((_) async => const Right(true));
    verifyNever(() => makeLogoutUsecase(NoParams()));
    final result = await makeLogoutUsecase(NoParams());
    verify(() => makeLogoutUsecase(NoParams())).called(1);
    expect(result, isA<Right>());
    expect(result.fold((l) => l, (r) => r), isA<bool>());
    expect(result.fold((l) => l, (r) => r), equals(true));
  }));

  test(
      'MakeLogoutUsecase - should return a Left and this Left is an CacheFailure',
      (() async {
    when(() => authRepository.makeLogout())
        .thenAnswer((_) async => Left(CacheFailure()));
    verifyNever(() => makeLogoutUsecase(NoParams()));
    final result = await makeLogoutUsecase(NoParams());
    verify(() => makeLogoutUsecase(NoParams())).called(1);
    expect(result, isA<Left>());
    expect(result.fold((l) => l, (r) => r), isA<CacheFailure>());
  }));
}
