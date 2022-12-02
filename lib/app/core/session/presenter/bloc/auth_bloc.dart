import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:qscondominio/app/core/session/domain/usecases/make_login_usecase.dart';
import 'package:qscondominio/app/core/session/domain/usecases/make_logout_usecase.dart';
import 'package:qscondominio/app/core/usecases/usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final MakeLoginUsecase makeLoginUsecase;
  final MakeLogoutUsecase makeLogoutUsecase;

  AuthBloc(
    this.makeLoginUsecase,
    this.makeLogoutUsecase,
  ) : super(AuthInitial()) {
    on<MakeLoginEvent>((event, emit) async {
      emit(AuthLoading());
      final result = await makeLoginUsecase(
          MakeLoginParams(userName: event.userName, password: event.password));
      result.fold((error) => emit(AuthLoginError()),
          (success) => emit(AuthLoginSuccess()));
      emit(AuthInitial());
    });

    on<MakeLogoutEvent>((event, emit) async {
      emit(AuthLoading());
      final result = await makeLogoutUsecase(NoParams());
      result.fold((error) => emit(AuthLogutError()),
          (success) => emit(AuthLogutSuccess()));
      emit(AuthInitial());
    });
  }
}
