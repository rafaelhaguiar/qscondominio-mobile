// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {}

class MakeLoginEvent extends AuthEvent {
  final String userName;
  final String password;
  MakeLoginEvent({
    required this.userName,
    required this.password,
  });

  @override
  List<Object?> get props => [userName, password];
}

class MakeLogoutEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}
