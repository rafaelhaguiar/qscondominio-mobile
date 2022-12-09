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

  group('MakeLoginUsecase - Params equatable test', () {
    late MakeLoginParams makeLoginParamsBase;
    late MakeLoginParams makeLoginParamsEqualsBase;
    late MakeLoginParams makeLoginParamsDifferentAllParams;
    late MakeLoginParams makeLoginParamsDifferentUsername;
    late MakeLoginParams makeLoginParamsDifferentPassword;

    setUp(() {
      makeLoginParamsBase = MakeLoginParams(
          userName: "mulder@gmail.com", password: 'iWantToBelieve');
      makeLoginParamsEqualsBase = MakeLoginParams(
          userName: "mulder@gmail.com", password: 'iWantToBelieve');
      makeLoginParamsDifferentAllParams = MakeLoginParams(
          userName: "scully@gmail.com", password: 'thereIsExplanation');
      makeLoginParamsDifferentUsername = MakeLoginParams(
          userName: "scully@gmail.com", password: 'iWantToBelieve');
      makeLoginParamsDifferentPassword = MakeLoginParams(
          userName: "rafaelhenriqueggt@gmail.com",
          password: 'thereIsExplanation');
    });
    test(
        'MakeLoginUsecase - Should be true when params has the same username and password ',
        () {
      expect(makeLoginParamsBase, equals(makeLoginParamsBase));
      expect(makeLoginParamsBase, equals(makeLoginParamsEqualsBase));
    });

    test(
        'MakeLoginUsecase - Should be false when params is not the same username and password ',
        () {
      expect(makeLoginParamsBase, isNot(makeLoginParamsDifferentAllParams));
      expect(makeLoginParamsBase, isNot(makeLoginParamsDifferentUsername));
      expect(makeLoginParamsBase, isNot(makeLoginParamsDifferentPassword));
    });
  });
}
